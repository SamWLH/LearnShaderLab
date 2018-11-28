Shader "Unlit/UvCtrl"
{
    Properties{
        _MainTex("Texture",2D) = "white"{}
    }
        SubShader{

            Tags{ "Queue" = "Transparent" "RenderType" = "Transparent" }
            //Blend SrcAlpha OneMinusSrcAlpha
            LOD 100

            Pass{

            CGPROGRAM
    #pragma vertex vert
    #pragma fragment frag
            ENDCG

            }
    }


        CGINCLUDE

#include "UnityCG.cginc"

        struct appdata {

        float2 uv : TEXCOORD0;
        float4 vertex : POSITION;

    };

    struct v2f {

        float2 uv : TEXCOORD0;
        float4 pos : SV_POSITION;

        //World relate add
        //float4 worldPos : TEXCOORD1;

        //screenPos relate add
        float2 screenPos : TEXCOORD1;

    };

    sampler2D _MainTex;
    float4 _MainTex_ST;

    v2f vert(appdata v)
    {
        v2f o;

        // World relate add
        //o.worldPos = mul(unity_ObjectToWorld, v.vertex);

        //screenPos relate add
        //o.screenPos = mul(UNITY_MATRIX_MV, v.vertex).xy;
        o.screenPos = UnityObjectToViewPos(v.vertex).xy;//upgrade

        // defult relate
        o.uv = TRANSFORM_TEX(v.uv, _MainTex);
        o.pos = UnityObjectToClipPos(v.vertex);
        return o;
    }

    fixed4 frag(v2f i) : SV_Target
    {
        // defult relate change
        //fixed4 color = tex2D(_MainTex, i.uv);

        // time relate change
        //i.uv = i.uv + float2(sin(_Time.y) * 0.5, sin(_Time.y) * 0.5);
        //fixed4 color = tex2D(_MainTex, i.uv);

        // world relate change
        //fixed4 color = tex2D(_MainTex, i.worldPos.xz);

        //screenPos relate change
        fixed4 color = tex2D(_MainTex, i.screenPos);


        return color;
    }




        ENDCG


}
