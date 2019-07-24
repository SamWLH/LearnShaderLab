// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

Shader "Unlit/lambert"
{
	Properties
	{
		//_MainTex ("Texture", 2D) = "white" {}
        [Slider]_Shiness("光泽度", Range(0.5,60)) = 1
        _Specular("高光", Color) = (1,1,1,1)
        _Diffuse("漫反射", Color) = (1,1,1,1)



	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			//#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
            #include "Lighting.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				//float2 uv : TEXCOORD0;
                float3 normal : NORMAL;
			};

			struct v2f
			{
				//float2 uv : TEXCOORD0;
				//UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
                float3 col : TEXCOORD0;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;

            float _Shiness;
            fixed4 _Specular;
            fixed4 _Diffuse;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				//o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				//UNITY_TRANSFER_FOG(o,o.vertex);
                
                //-----------兰伯特漫反射-------------------
                // _kd * lightingColor * max ( 0, dot<N, L > ); 
                //世界法向量
                //_World2Object  unity_WorldToObject
                float3 worldnormal = UnityObjectToWorldNormal(v.normal);
                //normalize(mul(float4(v.normal,0), unity_WorldToObject)).xyz;
                float3 lightDir = normalize(_WorldSpaceLightPos0.xyz);
                fixed3 lightcolor = _LightColor0.rgb;

                fixed3 diffuse = lightcolor * _Diffuse.rgb * max(0, dot(worldnormal, lightDir));

                //------------Phong氏高光------------------
                // _kd * lightingColor * pow(max(0,dot<r, v>), shiness);

                float3 viewDir = normalize(_WorldSpaceCameraPos - mul(unity_ObjectToWorld, v.vertex).xyz);
                //float3 reflectDir = normalize(reflect(-_WorldSpaceLightPos0.xyz, worldnormal));
                //fixed3 spacularCol = _Specular.rgb * lightcolor * pow(max(0, dot(reflectDir, viewDir)), _Shiness);

                //------------Blinn-Phong-----------------
                // _kd * lightingColor * pow(max(0,dot<N, halfDir>), shiness);
                float3 halfDir = normalize(viewDir + lightDir);
                fixed3 spacularCol = _Specular.rgb * lightcolor * pow(max(0, dot(worldnormal, halfDir)), _Shiness);

                //环境光
                fixed3 ambientCol = UNITY_LIGHTMODEL_AMBIENT.xyz;

                o.col = ambientCol + spacularCol + diffuse;
                //o.col = lightcolor;




				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				//fixed4 col = tex2D(_MainTex, i.uv);
				//// apply fog
				//UNITY_APPLY_FOG(i.fogCoord, col);

				//return col;

                return float4(i.col,1);
			}
			ENDCG
		}
	}
}
