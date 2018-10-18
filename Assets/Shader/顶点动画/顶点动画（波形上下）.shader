Shader "Sam'Shader编程/顶点动画（波形上下）" {
    Properties{
        _MainTex("主贴图(RGB)", 2D) = "white"{}
        _TintAmount("Tint Amount" ,Range(0,1)) = 0.5
        _ColorA("ColorA", Color) = (1,1,1,1)
        _ColorB("ColorB", Color) = (1,1,1,1)
        _Speed("Wave Speed", Range(0.1,80)) = 5
        _Frequency("Wave Frequency", Range(0,5)) = 2
        _Amplitude("Wave Amplitude", Range(-1,1)) = 1

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


            struct appdata {

                float4 texcoord : TEXCOORD0;
                float4 vertex : POSITION;//顶点位置
                //float3 normal : NORMAL;
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
                float time = _Time.y * _Speed;
                float waveValueA = sin(time + v.vertex.x *_Frequency)* _Amplitude;
                //sin(time + v.vertex.x) * _Amplitude;// + v.vertex.y + v.vertex.z
                    
                    
                //**2 得出的时间正弦值用的xyz(其中之一时) 不能与次出的因子为相同的轴 如：float3(v.vertex.x* waveValueA, v.vertex.y, v.vertex.z);
                //***或者 时间正弦值 直接用xyz的三个值相加计算 如shader顶点动画（波形水平） 中
                v.vertex.xyz = float3(v.vertex.x, v.vertex.y + waveValueA, v.vertex.z);

                //v.vertex = float4(v.vertex.x, v.vertex.y* waveValueA, v.vertex.z, v.vertex.w);
                o.vertex = UnityObjectToClipPos(v.vertex);


                o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
                // uv流动效果
                //o.uv += float2(0, time);
                // 颜色
                //o.vertColor = float3(waveValueA, waveValueA, waveValueA);

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
