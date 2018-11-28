// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:True;n:type:ShaderForge.SFN_Final,id:3138,x:32961,y:32764,varname:node_3138,prsc:2|emission-5140-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31778,y:32595,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4873,x:31887,y:32795,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_4873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-996-OUT;n:type:ShaderForge.SFN_Multiply,id:5827,x:32234,y:32706,varname:node_5827,prsc:2|A-7241-RGB,B-4873-RGB;n:type:ShaderForge.SFN_TexCoord,id:447,x:31249,y:32742,varname:node_447,prsc:2,uv:0;n:type:ShaderForge.SFN_Fresnel,id:3338,x:31852,y:33271,varname:node_3338,prsc:2|EXP-2927-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2927,x:31645,y:33317,ptovrint:False,ptlb:Fresnel_exp,ptin:_Fresnel_exp,varname:node_2927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:5712,x:32209,y:33238,ptovrint:False,ptlb:One_minus,ptin:_One_minus,varname:node_5712,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3338-OUT,B-3982-OUT;n:type:ShaderForge.SFN_OneMinus,id:3982,x:32007,y:33271,varname:node_3982,prsc:2|IN-3338-OUT;n:type:ShaderForge.SFN_Color,id:6063,x:32065,y:32942,ptovrint:False,ptlb:Fresnel_color,ptin:_Fresnel_color,varname:node_6063,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:2984,x:32335,y:33018,varname:node_2984,prsc:2|A-6063-RGB,B-5712-OUT,C-1331-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1331,x:32105,y:33169,ptovrint:False,ptlb:Fresnel_bright,ptin:_Fresnel_bright,varname:node_1331,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:2186,x:32436,y:32743,varname:node_2186,prsc:2|A-5827-OUT,B-2984-OUT;n:type:ShaderForge.SFN_Multiply,id:5140,x:32697,y:32793,varname:node_5140,prsc:2|A-5967-RGB,B-5967-A,C-2186-OUT;n:type:ShaderForge.SFN_VertexColor,id:5967,x:32435,y:32535,varname:node_5967,prsc:2;n:type:ShaderForge.SFN_Add,id:996,x:31604,y:32813,varname:node_996,prsc:2|A-447-UVOUT,B-8887-OUT;n:type:ShaderForge.SFN_Vector4Property,id:6633,x:31160,y:32939,ptovrint:False,ptlb:maintex_panner,ptin:_maintex_panner,varname:node_6633,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Append,id:8772,x:31338,y:32939,varname:node_8772,prsc:2|A-6633-X,B-6633-Y;n:type:ShaderForge.SFN_Multiply,id:8887,x:31484,y:32978,varname:node_8887,prsc:2|A-8772-OUT,B-9300-T;n:type:ShaderForge.SFN_Time,id:9300,x:31256,y:33107,varname:node_9300,prsc:2;proporder:4873-7241-2927-5712-6063-1331-6633;pass:END;sub:END;*/

Shader "cgwell/RimAdd_FrontsideFulling" {
    Properties {
        _Maintex ("Maintex", 2D) = "white" {}
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Fresnel_exp ("Fresnel_exp", Float ) = 0
        [MaterialToggle] _One_minus ("One_minus", Float ) = 0
        _Fresnel_color ("Fresnel_color", Color) = (0.5,0.5,0.5,1)
        _Fresnel_bright ("Fresnel_bright", Float ) = 0
        _maintex_panner ("maintex_panner", Vector) = (0,0,0,0)
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
            Blend One One
            Cull Front
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
            uniform float4 _Color;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float _Fresnel_exp;
            uniform fixed _One_minus;
            uniform float4 _Fresnel_color;
            uniform float _Fresnel_bright;
            uniform float4 _maintex_panner;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_9300 = _Time + _TimeEditor;
                float2 node_996 = (i.uv0+(float2(_maintex_panner.r,_maintex_panner.g)*node_9300.g));
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(node_996, _Maintex));
                float node_3338 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel_exp);
                float3 emissive = (i.vertexColor.rgb*i.vertexColor.a*((_Color.rgb*_Maintex_var.rgb)+(_Fresnel_color.rgb*lerp( node_3338, (1.0 - node_3338), _One_minus )*_Fresnel_bright)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
