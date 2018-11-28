// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33248,y:32984,varname:node_3138,prsc:2|emission-5688-OUT,alpha-7169-OUT;n:type:ShaderForge.SFN_Tex2d,id:2584,x:32570,y:32991,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_2584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fa5e1e35fc23efd4f96c8e0fc0088f14,ntxv:0,isnm:False|UVIN-9379-OUT;n:type:ShaderForge.SFN_TexCoord,id:3306,x:30945,y:32670,varname:node_3306,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:133,x:31527,y:32988,varname:node_133,prsc:2,tex:dcb3d7a710947fa43a345d30e971e121,ntxv:0,isnm:False|UVIN-5883-OUT,TEX-2171-TEX;n:type:ShaderForge.SFN_Add,id:3132,x:31263,y:32741,varname:node_3132,prsc:2|A-3306-UVOUT,B-186-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2171,x:31224,y:33079,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_2171,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dcb3d7a710947fa43a345d30e971e121,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6583,x:31527,y:32844,varname:node_6583,prsc:2,tex:dcb3d7a710947fa43a345d30e971e121,ntxv:0,isnm:False|UVIN-3132-OUT,TEX-2171-TEX;n:type:ShaderForge.SFN_Add,id:5883,x:31263,y:32922,varname:node_5883,prsc:2|A-3306-UVOUT,B-5768-OUT;n:type:ShaderForge.SFN_Append,id:275,x:31741,y:32922,varname:node_275,prsc:2|A-6583-R,B-133-G;n:type:ShaderForge.SFN_Vector4Property,id:8949,x:30437,y:32970,ptovrint:False,ptlb:Noise_SV,ptin:_Noise_SV,varname:node_8949,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:1,v4:1;n:type:ShaderForge.SFN_Append,id:2382,x:30651,y:32854,varname:node_2382,prsc:2|A-8949-X,B-8949-Y;n:type:ShaderForge.SFN_Append,id:7862,x:30705,y:33098,varname:node_7862,prsc:2|A-8949-Z,B-8949-W;n:type:ShaderForge.SFN_Multiply,id:186,x:30945,y:32827,varname:node_186,prsc:2|A-2382-OUT,B-7596-T;n:type:ShaderForge.SFN_Time,id:7596,x:30717,y:32972,varname:node_7596,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5768,x:30945,y:33078,varname:node_5768,prsc:2|A-7596-T,B-7862-OUT;n:type:ShaderForge.SFN_TexCoord,id:305,x:31769,y:32711,varname:node_305,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:9379,x:32372,y:32991,varname:node_9379,prsc:2|A-305-UVOUT,B-7683-OUT;n:type:ShaderForge.SFN_Multiply,id:8629,x:31927,y:32971,varname:node_8629,prsc:2|A-275-OUT,B-4754-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4754,x:31727,y:33106,ptovrint:False,ptlb:Noise_Power,ptin:_Noise_Power,varname:node_4754,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_Tex2d,id:2241,x:31872,y:33161,ptovrint:False,ptlb:Noise_Mask,ptin:_Noise_Mask,varname:node_2241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1981248e15cf7e74bb7bfed36e7ccc4b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7683,x:32108,y:33016,varname:node_7683,prsc:2|A-8629-OUT,B-2241-R;n:type:ShaderForge.SFN_Multiply,id:5688,x:32908,y:32994,varname:node_5688,prsc:2|A-2584-RGB,B-8634-RGB,C-8152-RGB,D-974-OUT;n:type:ShaderForge.SFN_Color,id:8634,x:32638,y:32767,ptovrint:False,ptlb:node_8634,ptin:_node_8634,varname:node_8634,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_VertexColor,id:8152,x:32597,y:33201,varname:node_8152,prsc:2;n:type:ShaderForge.SFN_Vector1,id:974,x:32719,y:33013,varname:node_974,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:7169,x:32908,y:33173,varname:node_7169,prsc:2|A-8634-A,B-8152-A,C-2584-A;proporder:2584-2241-2171-4754-8949-8634;pass:END;sub:END;*/

Shader "cgwell/cgwell_raodong" {
    Properties {
        _Maintex ("Maintex", 2D) = "white" {}
        _Noise_Mask ("Noise_Mask", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _Noise_Power ("Noise_Power", Float ) = 0.05
        _Noise_SV ("Noise_SV", Vector) = (1,1,1,1)
        _node_8634 ("node_8634", Color) = (0.5,0.5,0.5,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float4 _Noise_SV;
            uniform float _Noise_Power;
            uniform sampler2D _Noise_Mask; uniform float4 _Noise_Mask_ST;
            uniform float4 _node_8634;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_7596 = _Time + _TimeEditor;
                float2 node_3132 = (i.uv0+(float2(_Noise_SV.r,_Noise_SV.g)*node_7596.g));
                float4 node_6583 = tex2D(_Noise,TRANSFORM_TEX(node_3132, _Noise));
                float2 node_5883 = (i.uv0+(node_7596.g*float2(_Noise_SV.b,_Noise_SV.a)));
                float4 node_133 = tex2D(_Noise,TRANSFORM_TEX(node_5883, _Noise));
                float4 _Noise_Mask_var = tex2D(_Noise_Mask,TRANSFORM_TEX(i.uv0, _Noise_Mask));
                float2 node_9379 = (i.uv0+((float2(node_6583.r,node_133.g)*_Noise_Power)*_Noise_Mask_var.r));
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(node_9379, _Maintex));
                float3 emissive = (_Maintex_var.rgb*_node_8634.rgb*i.vertexColor.rgb*2.0);
                float3 finalColor = emissive;
                return fixed4(finalColor,(_node_8634.a*i.vertexColor.a*_Maintex_var.a));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
