//public enum WarpMode
//{
//    Defult,
//    Repeat,
//    Clamp,
//    Mirror
//}
//
//public enum TransFormPoint 
//{
//    Defult,
//    Center,
//}



Shader "Unlit/WrapMode"
{
    Properties
    {
        _MainTex("Texture", 2D) = "white" {}
        [KeywordEnum(Defult,Center)]_TransformPoint("Transform Point",int) = 0
        _Angle("Angle", float) = 0
        [KeywordEnum(Defult, Repeat, Clamp, Mirror)]_WarpMode("Warp Mode", int) = 0
        [Toggle]_DirectU("U 方向", int) = 1
        [Toggle]_DirectV("V 方向", int) = 1
    }
        SubShader
        {
            Tags { "RenderType" = "Transprent" }
            Blend SrcAlpha OneMinusSrcAlpha
            LOD 100

            Pass
            {
                CGPROGRAM
                #pragma vertex vert
                #pragma fragment frag
                // make fog work
                //#pragma multi_compile_fog

                //shader feature
                #pragma shader_feature _WARPMODE_DEFAULT _WARPMODE_REPEAT _WARPMODE_CLAMP _WARPMODE_MIRROR
                #pragma shader_feature _TRANSFORMPOINT_DEFAULT _TRANSFORMPOINT_CENTER
                #pragma shader_feature __ _DIRECTU_ON
                #pragma shader_feature __ _DIRECTV_ON

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
                };

                sampler2D _MainTex;
                float4 _MainTex_ST;
                float _Angle;

                //int _WarpMode;
                //int _TransformPoint;
                //int _DirectU;
                //int _DirectV;

                float2 TransformUVByAngle(float2 uv, float angle, float4 uvST)
                {
                    float2 outUV;
                    float s = sin(angle / 57.2958);
                    float c = cos(angle / 57.2958);
                    outUV = uv * uvST.xy + uvST.zw;
                    #if _TRANSFORMPOINT_DEFAULT
                        outUV = float2(outUV.x * c - outUV.y * s, outUV.x * s + outUV.y * c);
                    #elif _TRANSFORMPOINT_CENTER
                        outUV = outUV - uvST.xy * 0.5;
                        outUV = float2(outUV.x * c - outUV.y * s, outUV.x * s + outUV.y * c);
                        outUV = outUV + float2(0.5f, 0.5f);
                    #endif
                    return outUV;
                }

                v2f vert(appdata v)
                {
                    v2f o;
                    o.vertex = UnityObjectToClipPos(v.vertex);
                    //o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                    o.uv = TransformUVByAngle(v.uv, _Angle, _MainTex_ST);
                    //o.uv = TransFormUV(v.uv, _Angle, _MainTex_ST);
                    //UNITY_TRANSFER_FOG(o,o.vertex);
                    return o;
                }

                fixed4 frag(v2f i) : SV_Target
                {
                    fixed4 col;
                    float2 uv = i.uv;
                    // process
                 
                    #if _WARPMODE_REPEAT
                        uv = saturate(i.uv);
                        #if _DIRECTU_ON
                            uv.x = frac(i.uv.x);
                        #endif
                        #if _DIRECTV_ON
                            uv.y = frac(i.uv.y);
                        #endif
                    #elif _WARPMODE_CLAMP
                        uv = frac(i.uv);
                        #if _DIRECTU_ON
                        uv.x = saturate(i.uv.x);
                        #endif
                        #if _DIRECTV_ON
                        uv.y = saturate(i.uv.y);
                        #endif
                    #elif _WARPMODE_MIRROR
                        uv = saturate(i.uv);
                        #if _DIRECTU_ON
                            uv.x = abs(i.uv.x);
                        #endif
                        #if _DIRECTV_ON
                            uv.y = abs(i.uv.y);
                        #endif
                    #endif

                // sample the texture
                col = tex2D(_MainTex, uv);

                // apply fog
                //UNITY_APPLY_FOG(i.fogCoord, col);
            return col;
        }
        ENDCG
    }
        }
}
