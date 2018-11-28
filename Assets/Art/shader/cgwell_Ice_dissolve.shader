// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:True;n:type:ShaderForge.SFN_Final,id:3138,x:33197,y:32782,varname:node_3138,prsc:2|emission-1269-OUT,clip-7840-R;n:type:ShaderForge.SFN_Fresnel,id:4999,x:32003,y:32919,varname:node_4999,prsc:2|EXP-872-OUT;n:type:ShaderForge.SFN_Color,id:614,x:32013,y:32644,ptovrint:False,ptlb:node_614,ptin:_node_614,varname:node_614,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3394015,c3:0.5073529,c4:1;n:type:ShaderForge.SFN_Multiply,id:4857,x:32263,y:32747,varname:node_4857,prsc:2|A-614-RGB,B-4999-OUT,C-8391-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8391,x:31998,y:32506,ptovrint:False,ptlb:node_8391,ptin:_node_8391,varname:node_8391,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Add,id:9487,x:32459,y:32811,varname:node_9487,prsc:2|A-4857-OUT,B-336-OUT;n:type:ShaderForge.SFN_Fresnel,id:7845,x:31978,y:33116,varname:node_7845,prsc:2|EXP-8394-OUT;n:type:ShaderForge.SFN_Color,id:5356,x:32114,y:33086,ptovrint:False,ptlb:node_5356,ptin:_node_5356,varname:node_5356,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:336,x:32306,y:32988,varname:node_336,prsc:2|A-7845-OUT,B-5356-RGB,C-3025-OUT;n:type:ShaderForge.SFN_Vector1,id:8394,x:31785,y:33154,varname:node_8394,prsc:2,v1:5;n:type:ShaderForge.SFN_ValueProperty,id:3025,x:32116,y:33268,ptovrint:False,ptlb:node_3025,ptin:_node_3025,varname:node_3025,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Tex2d,id:7840,x:32454,y:33300,ptovrint:False,ptlb:rongjie,ptin:_rongjie,varname:node_7840,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2d454e3346b698b449e930d4cba62f06,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1269,x:32857,y:32992,varname:node_1269,prsc:2|A-9487-OUT,B-7840-RGB;n:type:ShaderForge.SFN_ValueProperty,id:872,x:31729,y:32972,ptovrint:False,ptlb:exp,ptin:_exp,varname:node_872,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:614-8391-5356-3025-7840-872;pass:END;sub:END;*/

Shader "cgwell/Ice_dissolve" {
    Properties {
        _node_614 ("node_614", Color) = (0,0.3394015,0.5073529,1)
        _node_8391 ("node_8391", Float ) = 2
        _node_5356 ("node_5356", Color) = (1,1,1,1)
        _node_3025 ("node_3025", Float ) = 5
        _rongjie ("rongjie", 2D) = "white" {}
        _exp ("exp", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _node_614;
            uniform float _node_8391;
            uniform float4 _node_5356;
            uniform float _node_3025;
            uniform sampler2D _rongjie; uniform float4 _rongjie_ST;
            uniform float _exp;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _rongjie_var = tex2D(_rongjie,TRANSFORM_TEX(i.uv0, _rongjie));
                clip(_rongjie_var.r - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (((_node_614.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_exp)*_node_8391)+(pow(1.0-max(0,dot(normalDirection, viewDirection)),5.0)*_node_5356.rgb*_node_3025))*_rongjie_var.rgb);
                float3 finalColor = emissive;
                outDiffuse = half4( 0, 0, 0, 1 );
                outSpecSmoothness = half4(0,0,0,0);
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4( (((_node_614.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_exp)*_node_8391)+(pow(1.0-max(0,dot(normalDirection, viewDirection)),5.0)*_node_5356.rgb*_node_3025))*_rongjie_var.rgb), 1 );
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _node_614;
            uniform float _node_8391;
            uniform float4 _node_5356;
            uniform float _node_3025;
            uniform sampler2D _rongjie; uniform float4 _rongjie_ST;
            uniform float _exp;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _rongjie_var = tex2D(_rongjie,TRANSFORM_TEX(i.uv0, _rongjie));
                clip(_rongjie_var.r - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (((_node_614.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_exp)*_node_8391)+(pow(1.0-max(0,dot(normalDirection, viewDirection)),5.0)*_node_5356.rgb*_node_3025))*_rongjie_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _rongjie; uniform float4 _rongjie_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _rongjie_var = tex2D(_rongjie,TRANSFORM_TEX(i.uv0, _rongjie));
                clip(_rongjie_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
