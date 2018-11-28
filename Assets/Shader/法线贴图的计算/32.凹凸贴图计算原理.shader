Shader "Sam'Shader编程/32.凹凸贴图计算原理" {
Properties{
	
	_MainTex("Main Color", 2D) = "white"{}
	_BumpMap("Bump Map",2D) = "white"{}
	_Diffuse("Diffuse", Color) = (1,1,1,1)
	_BumpScale("Bump Scale", Range(0.1,30.0)) = 10
	_BumpMap_TexelSize("Bump TexSize", Vector) = (1,1,1,1)
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

		float4 _BumpMap_TexelSize;

		struct appdata{
			float4 vertex : POSITION;
			float3 normal : NORMAL;
			float4 texcoord : TEXCOORD0;
		};

		struct v2f{
			float4 pos : SV_POSITION;
			//转化为世界空间的法线方向
			float3 worldNormal : TEXCOORD0;
			//转化的纹理坐标
			float2 uv : TEXCOORD1;
		};


		v2f vert(appdata v)
		{
			v2f o;
			o.pos = UnityObjectToClipPos(v.vertex);
			//把法线转化到世界坐标
			o.worldNormal = UnityObjectToWorldNormal(v.normal);
			o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
			
			return o;
		}

		fixed4 frag(v2f i) : SV_Target
		{
			fixed4 col;
			//unity自身的Diffuse带了环境光，此处叶保持一直
			fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz * _Diffuse.xyz;
			//归一化法线
			/** 即使在vert中归一化了也不行，从vert到frag阶段有插值处理，
			    传入的法线方向不是vert shader 直接传出的 */
			fixed3 worldNormal_1 = normalize(i.worldNormal);
		
			//------------ bump_map计算 -----------------
			/** 采样bump贴图，需要知道该点的斜率，xy方向分别求，
			    所以对于一个点需要采样四次 */
			fixed bumpValueU = tex2D(_BumpMap, i.uv + fixed2(-1 * _BumpMap_TexelSize.x,0)).r - tex2D(_BumpMap, i.uv + fixed2(1 * _BumpMap_TexelSize.x, 0)).r;
			fixed bumpValueV = tex2D(_BumpMap, i.uv + fixed2(0, -1 * _BumpMap_TexelSize.y)).r - tex2D(_BumpMap, i.uv + fixed2(0, 1 * _BumpMap_TexelSize.y)).r;
			//用上面的斜率来修改法线的偏移值
			fixed3 worldNormal = fixed3(worldNormal_1.x * bumpValueU * _BumpScale, worldNormal_1.y * bumpValueV * _BumpScale, worldNormal_1.z);
			//------------ bump_map计算 -----------------

			//把光照方向归一化
			fixed3 worldLightDir = normalize(_WorldSpaceLightPos0.xyz);
			//根据半兰伯特模型计算像素的光照信息 从（-1,1）区间变换到（0,1）区间
			fixed lanbert = 0.5 * dot(worldNormal, worldLightDir) + 0.5;
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
