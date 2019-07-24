Shader "Unlit/TowTextureBlend"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
        _SecondTex("Second Tex", 2D) = "white" {}

        [Slider]_BlendMainHigh("Blend Main High", Range(-1, 1)) = 0
        [Slider]_BlendSecondHigh("Blend Second High", Range(-1, 1)) = 0

        _ColorMask("Color Mask",int) = 0

	}
	SubShader
	{
		Tags { "RenderType"="Tranparent" }
        //Blend SrcAlpha OneMinusSrcAlpha
		//LOD 100

		Pass
		{
            Name "Second"
            Blend One One

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			// make fog work
			//#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;

                float modePos : TEXCOORD1;
			};

            sampler2D _SecondTex;
            float4 _SecondTex_ST;
            float _BlendSecondHigh;

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _SecondTex);
                o.modePos = v.vertex.y;


				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
                fixed4 col2 = tex2D(_SecondTex, i.uv);

                col2 = col2 * step(i.modePos, _BlendSecondHigh);

				return  col2;
			}
			ENDCG
		}

        Pass
        {
            Name "Main"
            Blend SrcAlpha OneMinusSrcAlpha
            ColorMask[_ColorMask]

            CGPROGRAM
#pragma vertex vert
#pragma fragment frag

#include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                //UNITY_FOG_COORDS(1)
                float4 vertex : SV_POSITION;

                float modePos : TEXCOORD1;
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;
            float _BlendMainHigh;

            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                o.modePos = v.vertex.y;

                return o;
            }

            fixed4 frag(v2f i) : SV_Target
            {
                // sample the texture
                fixed4 col = tex2D(_MainTex, i.uv);

                //col = col * step(i.modePos, _BlendMainHigh);
                
                col = col * saturate(_BlendMainHigh - i.modePos);
                return  col;
            }
            
            ENDCG

        }


	}
}
