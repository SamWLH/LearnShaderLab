Shader "Sam'Shader编程/顶点动画（波形水平）" {
    Properties{
        _MainTex("主贴图(RGB)", 2D) = "white"{}
    _TintAmount("Tint Amount" ,Range(0,1)) = 0.5
        _ColorA("ColorA", Color) = (1,1,1,1)
        _ColorB("ColorB", Color) = (1,1,1,1)
        _Speed("Wave Speed", Range(0.1,80)) = 5
        _Frequency("Wave Frequency", Range(0,5)) = 2
        _Amplitude("Wave Amplitude", Range(-1,1)) = 1
        _WaveLength("Wave Length", Range(0,5)) = 1

    }

        SubShader{

        //Tags{"RenderMode" = "Opaque"}

        Pass{
        CGPROGRAM

#pragma vertex vert
#pragma fragment frag
#pragma target 3.0
#include "UnityCG.cginc"

        sampler2D _MainTex;
    float4 _MainTex_ST;
    float _TintAmount;
    fixed4 _ColorA;
    fixed4 _ColorB;
    float _Speed;
    float _Frequency;
    float _Amplitude;
    float _WaveLength;


    struct appdata {

        float4 texcoord : TEXCOORD0;
        float4 vertex : POSITION;//顶点位置
    };

    struct v2f
    {
        float2 uv : TEXCOORD1;
        float3 vertColor : TEXCOORD2;
        float4 vertex : SV_POSITION;
    };

    v2f vert(appdata v)
    {
        v2f o;
        float time = _Time.x * _Speed;
        float waveValueA = sin(time + v.vertex.y * _Frequency) * _Amplitude;

        float4 offset;
        offset.xyz = float3(0, 0, 0);
        offset.x = sin(_Frequency*_Time.y + v.vertex.x *_WaveLength + v.vertex.y*_WaveLength + v.vertex.z*_WaveLength) * _Amplitude;
        o.vertex = UnityObjectToClipPos(v.vertex + offset);


        o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
        //uv流动效果
        o.uv += float2(0, _Time.y*_Speed);

        o.vertColor = float3(waveValueA, waveValueA, waveValueA);

        return o;
    }

    fixed4 frag(v2f i) : SV_Target{
        fixed4 col = tex2D(_MainTex, i.uv);
    float3 tintColor = lerp(_ColorA, _ColorB, i.vertColor).rgb;
    col = fixed4(col.rgb * (tintColor * _TintAmount), col.a);
    return col;
    }

        ENDCG
    }




    }
}
