// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:True;n:type:ShaderForge.SFN_Final,id:3138,x:32881,y:32789,varname:node_3138,prsc:2|emission-2610-OUT,alpha-645-OUT;n:type:ShaderForge.SFN_Tex2d,id:1266,x:31971,y:32702,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_1266,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3818-OUT;n:type:ShaderForge.SFN_TexCoord,id:3798,x:31454,y:32662,varname:node_3798,prsc:2,uv:0;n:type:ShaderForge.SFN_Fresnel,id:9014,x:31738,y:33255,varname:node_9014,prsc:2|EXP-6067-OUT;n:type:ShaderForge.SFN_Add,id:9127,x:32476,y:32878,varname:node_9127,prsc:2|A-2849-OUT,B-5974-OUT;n:type:ShaderForge.SFN_Color,id:855,x:31956,y:32882,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_855,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:6067,x:31537,y:33289,ptovrint:False,ptlb:Rim_exp,ptin:_Rim_exp,varname:node_6067,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2849,x:32228,y:32779,varname:node_2849,prsc:2|A-1266-RGB,B-855-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:3240,x:32194,y:33178,ptovrint:False,ptlb:One_minus,ptin:_One_minus,varname:node_3240,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9014-OUT,B-5952-OUT;n:type:ShaderForge.SFN_OneMinus,id:5952,x:31983,y:33300,varname:node_5952,prsc:2|IN-9014-OUT;n:type:ShaderForge.SFN_Multiply,id:5974,x:32357,y:33054,varname:node_5974,prsc:2|A-3532-RGB,B-3240-OUT,C-4145-OUT;n:type:ShaderForge.SFN_Color,id:3532,x:32158,y:32903,ptovrint:False,ptlb:Fresnel_Color,ptin:_Fresnel_Color,varname:node_3532,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:4145,x:32124,y:33110,ptovrint:False,ptlb:Fresnel_Bright,ptin:_Fresnel_Bright,varname:node_4145,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_VertexColor,id:7285,x:32292,y:33319,varname:node_7285,prsc:2;n:type:ShaderForge.SFN_Multiply,id:645,x:32621,y:33141,varname:node_645,prsc:2|A-3240-OUT,B-7285-A;n:type:ShaderForge.SFN_Multiply,id:2610,x:32643,y:32906,varname:node_2610,prsc:2|A-9127-OUT,B-7285-RGB;n:type:ShaderForge.SFN_Vector4Property,id:7961,x:31171,y:32871,ptovrint:False,ptlb:maintex_paner,ptin:_maintex_paner,varname:node_7961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:3818,x:31731,y:32719,varname:node_3818,prsc:2|A-3798-UVOUT,B-5418-OUT;n:type:ShaderForge.SFN_Multiply,id:5418,x:31625,y:32920,varname:node_5418,prsc:2|A-6501-OUT,B-4645-T;n:type:ShaderForge.SFN_Time,id:4645,x:31416,y:33100,varname:node_4645,prsc:2;n:type:ShaderForge.SFN_Append,id:6501,x:31400,y:32900,varname:node_6501,prsc:2|A-7961-X,B-7961-Y;proporder:1266-855-6067-3240-3532-4145-7961;pass:END;sub:END;*/

Shader "cgwell/rim_blendBackfulling" {
    Properties {
        _Maintex ("Maintex", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Rim_exp ("Rim_exp", Float ) = 1
        [MaterialToggle] _One_minus ("One_minus", Float ) = 1
        _Fresnel_Color ("Fresnel_Color", Color) = (0.5,0.5,0.5,1)
        _Fresnel_Bright ("Fresnel_Bright", Float ) = 0
        _maintex_paner ("maintex_paner", Vector) = (0,0,0,0)
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
            uniform float4 _Color;
            uniform float _Rim_exp;
            uniform fixed _One_minus;
            uniform float4 _Fresnel_Color;
            uniform float _Fresnel_Bright;
            uniform float4 _maintex_paner;
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
                o.normalDir = UnityObjectToWorldNormal(v.normal);
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
                float4 node_4645 = _Time + _TimeEditor;
                float2 node_3818 = (i.uv0+(float2(_maintex_paner.r,_maintex_paner.g)*node_4645.g));
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(node_3818, _Maintex));
                float node_9014 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_Rim_exp);
                float _One_minus_var = lerp( node_9014, (1.0 - node_9014), _One_minus );
                float3 emissive = (((_Maintex_var.rgb*_Color.rgb)+(_Fresnel_Color.rgb*_One_minus_var*_Fresnel_Bright))*i.vertexColor.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,(_One_minus_var*i.vertexColor.a));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
