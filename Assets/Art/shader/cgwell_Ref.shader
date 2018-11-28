// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:True;n:type:ShaderForge.SFN_Final,id:3138,x:32704,y:33173,varname:node_3138,prsc:2|emission-4868-OUT,alpha-4868-OUT,refract-1198-OUT;n:type:ShaderForge.SFN_Vector1,id:3683,x:32291,y:33062,varname:node_3683,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:6543,x:31897,y:33584,ptovrint:False,ptlb:ref_power,ptin:_ref_power,varname:node_6543,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.1,cur:0,max:0.1;n:type:ShaderForge.SFN_Tex2d,id:6277,x:31914,y:33335,ptovrint:False,ptlb:ref_texture,ptin:_ref_texture,varname:node_6277,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f67246903fd040d4088ff49217db46e2,ntxv:3,isnm:False|UVIN-1114-OUT;n:type:ShaderForge.SFN_Multiply,id:1198,x:32383,y:33474,varname:node_1198,prsc:2|A-3495-OUT,B-6543-OUT,C-7552-A,D-1349-RGB;n:type:ShaderForge.SFN_Tex2d,id:1349,x:32035,y:33719,ptovrint:False,ptlb:mask,ptin:_mask,varname:node_1349,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:4868,x:32484,y:33269,varname:node_4868,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:3495,x:32155,y:33381,varname:node_3495,prsc:2|A-6277-R,B-6277-G;n:type:ShaderForge.SFN_VertexColor,id:7552,x:31897,y:33127,varname:node_7552,prsc:2;n:type:ShaderForge.SFN_Vector4Property,id:3691,x:30960,y:33623,ptovrint:False,ptlb:Ref_SV,ptin:_Ref_SV,varname:node_3691,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:1114,x:31612,y:33404,varname:node_1114,prsc:2|A-4561-UVOUT,B-8816-OUT;n:type:ShaderForge.SFN_TexCoord,id:8533,x:31166,y:33255,varname:node_8533,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:3220,x:31185,y:33638,varname:node_3220,prsc:2|A-3691-X,B-3691-Y;n:type:ShaderForge.SFN_Rotator,id:4561,x:31423,y:33340,varname:node_4561,prsc:2|UVIN-8533-UVOUT,ANG-3691-Z,SPD-3691-W;n:type:ShaderForge.SFN_Multiply,id:8816,x:31398,y:33653,varname:node_8816,prsc:2|A-3220-OUT,B-4241-T;n:type:ShaderForge.SFN_Time,id:4241,x:31161,y:33794,varname:node_4241,prsc:2;proporder:6277-6543-1349-3691;pass:END;sub:END;*/

Shader "cgwell/Ref" {
    Properties {
        _ref_texture ("ref_texture", 2D) = "bump" {}
        _ref_power ("ref_power", Range(-0.1, 0.1)) = 0
        _mask ("mask", 2D) = "white" {}
        _Ref_SV ("Ref_SV", Vector) = (0,0,0,0)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform float _ref_power;
            uniform sampler2D _ref_texture; uniform float4 _ref_texture_ST;
            uniform sampler2D _mask; uniform float4 _mask_ST;
            uniform float4 _Ref_SV;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float node_4561_ang = _Ref_SV.b;
                float node_4561_spd = _Ref_SV.a;
                float node_4561_cos = cos(node_4561_spd*node_4561_ang);
                float node_4561_sin = sin(node_4561_spd*node_4561_ang);
                float2 node_4561_piv = float2(0.5,0.5);
                float2 node_4561 = (mul(i.uv0-node_4561_piv,float2x2( node_4561_cos, -node_4561_sin, node_4561_sin, node_4561_cos))+node_4561_piv);
                float4 node_4241 = _Time + _TimeEditor;
                float2 node_1114 = (node_4561+(float2(_Ref_SV.r,_Ref_SV.g)*node_4241.g));
                float4 _ref_texture_var = tex2D(_ref_texture,TRANSFORM_TEX(node_1114, _ref_texture));
                float4 _mask_var = tex2D(_mask,TRANSFORM_TEX(i.uv0, _mask));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (float3(float2(_ref_texture_var.r,_ref_texture_var.g),0.0)*_ref_power*i.vertexColor.a*_mask_var.rgb).rg;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float node_4868 = 0.0;
                float3 emissive = float3(node_4868,node_4868,node_4868);
                float3 finalColor = emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,node_4868),1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
