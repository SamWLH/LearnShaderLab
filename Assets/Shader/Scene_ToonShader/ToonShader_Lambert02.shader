﻿Shader "Sam'Shader编程/ToonShader_Lambert02" {
    Properties{
        _MainTex("主纹理", 2D) = "white"{}
        _RampTex("坡度图", 2D) = "white"{}
    }

        SubShader{
        Cull Off

        Pass{

        CGPROGRAM

#pragma vertex vert
#pragma fragment frag

#include "UnityCG.cginc"
#include "Lighting.cginc"

        struct appdata {
        half4 vertex : POSITION;
        half2 uv : TEXCOORD0;
        float3 normal : NORMAL;
    };

    struct v2f {

        half2 uv : TEXCOORD0;
        half4 vertex: SV_POSITION;
        float3 normal : NORMAL;
    };

    sampler2D _MainTex;
    sampler2D _RampTex;
    float4 _MainTex_ST;

    v2f vert(appdata i)
    {
        v2f o;
        o.vertex = UnityObjectToClipPos(i.vertex);
        //o.uv = i.uv;
        o.uv = TRANSFORM_TEX(i.uv, _MainTex);
        o.normal = i.normal;
        return o;
    }

    fixed4 frag(v2f i) : SV_Target
    {

        //世界光照方向
        fixed3 worldLight = normalize(-_WorldSpaceLightPos0.xyz);
        half NdotL = dot(i.normal, worldLight);
        NdotL = tex2D(_RampTex, fixed2(NdotL, 0.5));

        fixed4 col = tex2D(_MainTex, i.uv);

        col.rgb = col.rgb * _LightColor0.rgb * 2 * NdotL;//max(0, NdotL);
        //col.rgb = col.rgb * cel;


        return col;
    }

        ENDCG
    }


    }

        //CGINCLUDE

}
