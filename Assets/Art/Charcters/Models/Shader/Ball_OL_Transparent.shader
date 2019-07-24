// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:Legacy Shaders/Diffuse,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:True,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:1,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:0,x:35987,y:33129,varname:node_0,prsc:2|emission-8030-OUT,custl-919-OUT,alpha-6629-A,olwid-5886-OUT,olcol-6441-OUT;n:type:ShaderForge.SFN_Dot,id:40,x:33550,y:33009,varname:node_40,prsc:2,dt:1|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:33073,y:33227,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:33037,y:32930,varname:node_42,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9120,x:33248,y:32733,varname:_node_9643_copy_copy,prsc:2,ntxv:0,isnm:False|TEX-9167-TEX;n:type:ShaderForge.SFN_Vector1,id:7888,x:33484,y:32708,varname:node_7888,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:9664,x:33726,y:32750,varname:node_9664,prsc:2|A-7888-OUT,B-9120-G;n:type:ShaderForge.SFN_Subtract,id:2990,x:33874,y:32906,varname:node_2990,prsc:2|A-40-OUT,B-9664-OUT;n:type:ShaderForge.SFN_If,id:3046,x:34017,y:33126,varname:node_3046,prsc:2|A-2990-OUT,B-2817-OUT,GT-6943-OUT,EQ-1346-OUT,LT-1346-OUT;n:type:ShaderForge.SFN_Slider,id:2817,x:33415,y:33251,ptovrint:False,ptlb:Shadow Range,ptin:_ShadowRange,varname:node_2817,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:6943,x:33625,y:33360,varname:node_6943,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1346,x:33625,y:33431,varname:node_1346,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:7076,x:33232,y:32403,varname:_node_9643_copy_copy_copy,prsc:2,ntxv:0,isnm:False|TEX-9167-TEX;n:type:ShaderForge.SFN_Tex2d,id:6629,x:35480,y:33135,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8078,x:34209,y:32655,cmnt:Diffuse,varname:node_8078,prsc:2|A-6629-RGB,B-9458-OUT;n:type:ShaderForge.SFN_OneMinus,id:4552,x:34706,y:33256,varname:node_4552,prsc:2|IN-9597-OUT;n:type:ShaderForge.SFN_Multiply,id:7944,x:34972,y:33079,cmnt:Shadow,varname:node_7944,prsc:2|A-2807-OUT,B-4552-OUT;n:type:ShaderForge.SFN_Add,id:2201,x:35291,y:33015,cmnt:Diffuse,varname:node_2201,prsc:2|A-9930-OUT,B-7944-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9167,x:32846,y:32689,ptovrint:False,ptlb:GSS Tex,ptin:_GSSTex,varname:node_9167,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:5886,x:35573,y:33847,ptovrint:False,ptlb:Outline Width,ptin:_OutlineWidth,varname:node_5886,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.005;n:type:ShaderForge.SFN_Multiply,id:2807,x:34717,y:32761,varname:node_2807,prsc:2|A-6629-RGB,B-5731-OUT,C-906-OUT;n:type:ShaderForge.SFN_Set,id:780,x:34404,y:32691,varname:Diffuse,prsc:2|IN-8078-OUT;n:type:ShaderForge.SFN_Get,id:9930,x:35157,y:32865,varname:node_9930,prsc:2|IN-780-OUT;n:type:ShaderForge.SFN_Get,id:9597,x:34317,y:33375,varname:node_9597,prsc:2|IN-2937-OUT;n:type:ShaderForge.SFN_Set,id:2937,x:34149,y:33014,varname:DiffuseIf,prsc:2|IN-3046-OUT;n:type:ShaderForge.SFN_Get,id:9458,x:33967,y:32711,varname:node_9458,prsc:2|IN-2937-OUT;n:type:ShaderForge.SFN_Color,id:6715,x:35023,y:33611,ptovrint:False,ptlb:Outline Color,ptin:_OutlineColor,varname:node_6715,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:1588,x:35446,y:33692,varname:node_1588,prsc:2,v1:0.26;n:type:ShaderForge.SFN_Blend,id:8272,x:35323,y:33469,varname:node_8272,prsc:2,blmd:8,clmp:True|SRC-2807-OUT,DST-6715-RGB;n:type:ShaderForge.SFN_Subtract,id:4939,x:35593,y:33620,varname:node_4939,prsc:2|A-8272-OUT,B-1588-OUT;n:type:ShaderForge.SFN_Add,id:8030,x:36221,y:32604,varname:node_8030,prsc:2|A-9519-OUT,B-6085-OUT;n:type:ShaderForge.SFN_Multiply,id:6085,x:35988,y:32658,varname:node_6085,prsc:2|A-8517-OUT,B-2233-OUT,C-5005-OUT;n:type:ShaderForge.SFN_Fresnel,id:5005,x:35919,y:32826,varname:node_5005,prsc:2|EXP-6332-OUT;n:type:ShaderForge.SFN_Multiply,id:9519,x:35767,y:32488,varname:node_9519,prsc:2|A-6804-OUT,B-6629-RGB;n:type:ShaderForge.SFN_Vector1,id:6332,x:35674,y:32881,varname:node_6332,prsc:2,v1:8;n:type:ShaderForge.SFN_Vector1,id:2233,x:35685,y:32792,varname:node_2233,prsc:2,v1:4;n:type:ShaderForge.SFN_Vector1,id:6804,x:35460,y:32429,varname:node_6804,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:1623,x:35448,y:32672,ptovrint:False,ptlb:Light Tex,ptin:_LightTex,varname:node_1623,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cba1095dba3772241944c12677aa212f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8517,x:35767,y:32627,varname:node_8517,prsc:2|A-4793-OUT,B-1623-RGB;n:type:ShaderForge.SFN_Get,id:4115,x:35220,y:33160,varname:node_4115,prsc:2;n:type:ShaderForge.SFN_Vector1,id:906,x:34733,y:32535,varname:node_906,prsc:2,v1:1.32;n:type:ShaderForge.SFN_LightColor,id:7941,x:35389,y:33338,varname:node_7941,prsc:2;n:type:ShaderForge.SFN_Multiply,id:919,x:35748,y:33271,varname:node_919,prsc:2|A-2201-OUT,B-7941-RGB;n:type:ShaderForge.SFN_Vector3,id:5731,x:34959,y:32687,varname:node_5731,prsc:2,v1:0.7254902,v2:0.668589,v3:0.6961679;n:type:ShaderForge.SFN_Slider,id:4793,x:35249,y:32529,ptovrint:False,ptlb:Rim Range,ptin:_RimRange,varname:node_4793,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:6441,x:35748,y:33520,varname:node_6441,prsc:2|A-7941-RGB,B-4939-OUT;proporder:6629-9167-2817-6715-5886-1623-4793;pass:END;sub:END;*/

Shader "Ball/Ball_OL_Transparent" {
    Properties {
		_MainTex("Base (RGB)", 2D) = "white" {}
        _Diffuse ("Diffuse", 2D) = "bump" {}
        _GSSTex ("GSS Tex", 2D) = "white" {}
        _ShadowRange ("Shadow Range", Range(0, 1)) = 0
        _OutlineColor ("Outline Color", Color) = (0.5,0.5,0.5,1)
        _OutlineWidth ("Outline Width", Range(0, 0.005)) = 0
        _LightTex ("Light Tex", 2D) = "white" {}
        _RimRange ("Rim Range", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent+1"
            "RenderType"="Transparent"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _OutlineWidth;
            uniform float4 _OutlineColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*_OutlineWidth,1) );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 lightColor = _LightColor0.rgb;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_2807 = (_Diffuse_var.rgb*float3(0.7254902,0.668589,0.6961679)*1.32);
                return fixed4((_LightColor0.rgb*(saturate((node_2807+_OutlineColor.rgb))-0.26)),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _ShadowRange;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _GSSTex; uniform float4 _GSSTex_ST;
            uniform sampler2D _LightTex; uniform float4 _LightTex_ST;
            uniform float _RimRange;
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
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _LightTex_var = tex2D(_LightTex,TRANSFORM_TEX(i.uv0, _LightTex));
                float3 emissive = ((0.0*_Diffuse_var.rgb)+((_RimRange*_LightTex_var.rgb)*4.0*pow(1.0-max(0,dot(normalDirection, viewDirection)),8.0)));
                float4 _node_9643_copy_copy = tex2D(_GSSTex,TRANSFORM_TEX(i.uv0, _GSSTex));
                float node_3046_if_leA = step((max(0,dot(lightDirection,normalDirection))-(0.5-_node_9643_copy_copy.g)),_ShadowRange);
                float node_3046_if_leB = step(_ShadowRange,(max(0,dot(lightDirection,normalDirection))-(0.5-_node_9643_copy_copy.g)));
                float node_1346 = 0.0;
                float DiffuseIf = lerp((node_3046_if_leA*node_1346)+(node_3046_if_leB*1.0),node_1346,node_3046_if_leA*node_3046_if_leB);
                float3 Diffuse = (_Diffuse_var.rgb*DiffuseIf);
                float3 node_2807 = (_Diffuse_var.rgb*float3(0.7254902,0.668589,0.6961679)*1.32);
                float3 finalColor = emissive + ((Diffuse+(node_2807*(1.0 - DiffuseIf)))*_LightColor0.rgb);
                return fixed4(finalColor,_Diffuse_var.a);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #include "UnityCG.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _LightTex; uniform float4 _LightTex_ST;
            uniform float _RimRange;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
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
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _LightTex_var = tex2D(_LightTex,TRANSFORM_TEX(i.uv0, _LightTex));
                o.Emission = ((0.0*_Diffuse_var.rgb)+((_RimRange*_LightTex_var.rgb)*4.0*pow(1.0-max(0,dot(normalDirection, viewDirection)),8.0)));
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Legacy Shaders/Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
