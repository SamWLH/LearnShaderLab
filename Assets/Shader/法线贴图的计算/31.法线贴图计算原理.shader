Shader "Sam'Shader编程/31.法线贴图计算原理" {
Properties{
	
	_MainTex("Main Color", 2D) = "white"{}
	_BumpMap("Bump Map",2D) = "white"{}
	_Diffuse("Diffuse", Color) = (1,1,1,1)
	_BumpScale("Bump Scale", Range(0.1,30.0)) = 10
}

SubShader{
	
	Pass
	{
		Tags{"RenderType" = "Opaque"}

		CGPROGRAM
		#include "Lighting.cginc"
		#include "UnityCG.cginc"
		#pragma vertex vert
		#pragma fragment frag

		sampler2D _MainTex;
		sampler2D _BumpMap;
		fixed4 _Diffuse;
		float _BumpScale;

		float4 _MainTex_ST;

		struct v2f{
			float4 pos : SV_POSITION;
			//tangent空间的光线方向
			float3 lightDir : TEXCOORD0;
			//转化的纹理坐标
			float2 uv : TEXCOORD1;
		};


		v2f vert(appdata_tan v)
		{
			v2f o;
			o.pos = UnityObjectToClipPos(v.vertex);
			//这个宏为我们定义好了模型空间到切线空间的转换矩阵rotation，注意后面有个；
			TANGENT_SPACE_ROTATION;
			o.lightDir = mul(rotation, ObjSpaceLightDir(v.vertex));

			o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
			
			return o;
		}

		fixed4 frag(v2f i) : SV_Target
		{
			fixed4 col;
			//unity自身的Diffuse带了环境光，此处叶保持一直
			fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz * _Diffuse.xyz;


			//------------切线空间计算----------------------------
			//直接解出切线空间法线
			float3 tangentNormal = UnpackNormal(tex2D(_BumpMap, i.uv));
			//归一化切线空间灯光方向
			float3 tangentLight = normalize(i.lightDir);
			//------------切线空间计算----------------------------


			//根据半兰伯特模型计算像素的光照信息 从（-1,1）区间变换到（0,1）区间
			fixed lanbert = 0.5 * dot(tangentNormal, tangentLight) + 0.5;
			//最终输出颜色 = lambert光强 * 材质diffuse颜色 * 光颜色 + 环境光
			fixed3 diffuse = lanbert * _Diffuse.xyz * _LightColor0.xyz + ambient;
			//进行纹理采样
			fixed4 color = tex2D(_MainTex, i.uv);
			//混合纹理的颜色
			col = fixed4(diffuse * color.rgb, 1.0);
			return col;

		}


		ENDCG
	}


}
}
