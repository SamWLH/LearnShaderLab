// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-5700-OUT,alpha-3619-R;n:type:ShaderForge.SFN_Tex2d,id:5040,x:31584,y:32484,ptovrint:False,ptlb:panner_texture,ptin:_panner_texture,varname:node_5040,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4456-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:9588,x:31692,y:32909,ptovrint:False,ptlb:beijing,ptin:_beijing,varname:node_9588,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9441-UVOUT;n:type:ShaderForge.SFN_Add,id:5700,x:32379,y:32528,varname:node_5700,prsc:2|A-2638-OUT,B-8546-OUT,C-9578-RGB,D-5871-RGB,E-9422-A;n:type:ShaderForge.SFN_TexCoord,id:8854,x:31013,y:32220,varname:node_8854,prsc:2,uv:0;n:type:ShaderForge.SFN_TexCoord,id:9441,x:31249,y:32931,varname:node_9441,prsc:2,uv:1;n:type:ShaderForge.SFN_Tex2d,id:3619,x:31688,y:33269,ptovrint:False,ptlb:mask,ptin:_mask,varname:node_3619,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9441-UVOUT;n:type:ShaderForge.SFN_Panner,id:4456,x:31328,y:32436,varname:node_4456,prsc:2,spu:0.5,spv:1|UVIN-8854-UVOUT,DIST-8533-OUT;n:type:ShaderForge.SFN_Time,id:9433,x:30717,y:32631,varname:node_9433,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8533,x:31129,y:32610,varname:node_8533,prsc:2|A-9433-T,B-5038-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5038,x:30934,y:32775,ptovrint:False,ptlb:node_5038,ptin:_node_5038,varname:node_5038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ComponentMask,id:4236,x:31608,y:32301,varname:node_4236,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8854-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2638,x:31781,y:32393,varname:node_2638,prsc:2|A-4236-OUT,B-5040-RGB;n:type:ShaderForge.SFN_Tex2d,id:9578,x:31644,y:31980,ptovrint:False,ptlb:panner_02,ptin:_panner_02,varname:node_9578,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3169-UVOUT;n:type:ShaderForge.SFN_Panner,id:3169,x:31382,y:31953,varname:node_3169,prsc:2,spu:0,spv:-0.3|UVIN-8854-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5871,x:31659,y:31695,ptovrint:False,ptlb:texture_02,ptin:_texture_02,varname:node_5871,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8500-UVOUT;n:type:ShaderForge.SFN_Panner,id:8500,x:31373,y:31669,varname:node_8500,prsc:2,spu:0,spv:0.1|UVIN-8854-UVOUT,DIST-4723-OUT;n:type:ShaderForge.SFN_Time,id:7255,x:30703,y:31855,varname:node_7255,prsc:2;n:type:ShaderForge.SFN_Sin,id:4723,x:30883,y:31867,varname:node_4723,prsc:2|IN-7255-T;n:type:ShaderForge.SFN_Tex2d,id:9422,x:31645,y:31462,ptovrint:False,ptlb:led_texture,ptin:_led_texture,varname:node_9422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9441-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6383,x:31749,y:33088,ptovrint:False,ptlb:beijing_noise,ptin:_beijing_noise,varname:node_6383,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5039-UVOUT;n:type:ShaderForge.SFN_Multiply,id:60,x:31993,y:33017,varname:node_60,prsc:2|A-9588-RGB,B-6383-R,C-1280-OUT;n:type:ShaderForge.SFN_Add,id:8546,x:32208,y:32793,varname:node_8546,prsc:2|A-2494-OUT,B-60-OUT,C-3290-RGB,D-2382-RGB;n:type:ShaderForge.SFN_Multiply,id:2494,x:31965,y:32745,varname:node_2494,prsc:2|A-9588-RGB,B-6777-OUT;n:type:ShaderForge.SFN_Panner,id:5039,x:31512,y:33048,varname:node_5039,prsc:2,spu:0.2,spv:0|UVIN-9441-UVOUT;n:type:ShaderForge.SFN_Vector1,id:6777,x:31781,y:32795,varname:node_6777,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Vector1,id:1280,x:31874,y:33184,varname:node_1280,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:3290,x:31701,y:33496,ptovrint:False,ptlb:glow_size,ptin:_glow_size,varname:node_3290,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3973-OUT;n:type:ShaderForge.SFN_RemapRange,id:4984,x:31188,y:33498,varname:node_4984,prsc:2,frmn:0,frmx:1,tomn:0,tomx:1|IN-9441-UVOUT;n:type:ShaderForge.SFN_Lerp,id:3973,x:31454,y:33496,varname:node_3973,prsc:2|A-4984-OUT,B-4806-OUT,T-3745-OUT;n:type:ShaderForge.SFN_Vector2,id:4806,x:31188,y:33669,varname:node_4806,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Sin,id:3306,x:30595,y:33738,varname:node_3306,prsc:2|IN-2645-T;n:type:ShaderForge.SFN_Multiply,id:3745,x:31277,y:33752,varname:node_3745,prsc:2|A-843-OUT,B-3306-OUT;n:type:ShaderForge.SFN_Vector1,id:843,x:30911,y:33768,varname:node_843,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Panner,id:8716,x:31492,y:34102,varname:node_8716,prsc:2,spu:3,spv:0|UVIN-6289-UVOUT,DIST-7838-OUT;n:type:ShaderForge.SFN_Tex2d,id:2382,x:31647,y:34102,ptovrint:False,ptlb:node_2382,ptin:_node_2382,varname:node_2382,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8d077ad5ec523d246a1e54450b1a17db,ntxv:0,isnm:False|UVIN-8716-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6289,x:31136,y:34202,varname:node_6289,prsc:2,uv:1;n:type:ShaderForge.SFN_Ceil,id:6609,x:31180,y:33988,varname:node_6609,prsc:2|IN-4564-OUT;n:type:ShaderForge.SFN_Multiply,id:7838,x:31360,y:33988,varname:node_7838,prsc:2|A-6609-OUT,B-5431-OUT;n:type:ShaderForge.SFN_Vector1,id:5431,x:31168,y:34137,varname:node_5431,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:4564,x:31000,y:33988,varname:node_4564,prsc:2|A-7546-OUT,B-3235-OUT;n:type:ShaderForge.SFN_Vector1,id:3235,x:30786,y:34124,varname:node_3235,prsc:2,v1:10;n:type:ShaderForge.SFN_Time,id:2645,x:30388,y:33931,varname:node_2645,prsc:2;n:type:ShaderForge.SFN_Frac,id:7546,x:30762,y:33988,varname:node_7546,prsc:2|IN-1099-OUT;n:type:ShaderForge.SFN_Multiply,id:1099,x:30612,y:33988,varname:node_1099,prsc:2|A-2645-T,B-1977-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1977,x:30415,y:34080,ptovrint:False,ptlb:yinlang_speed,ptin:_yinlang_speed,varname:node_1977,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:5040-9588-3619-5038-9578-5871-9422-6383-3290-2382-1977;pass:END;sub:END;*/

Shader "cgwell/FxForPingMu" {
    Properties {
        _panner_texture ("panner_texture", 2D) = "white" {}
        _beijing ("beijing", 2D) = "white" {}
        _mask ("mask", 2D) = "white" {}
        _node_5038 ("node_5038", Float ) = 0.1
        _panner_02 ("panner_02", 2D) = "white" {}
        _texture_02 ("texture_02", 2D) = "white" {}
        _led_texture ("led_texture", 2D) = "white" {}
        _beijing_noise ("beijing_noise", 2D) = "white" {}
        _glow_size ("glow_size", 2D) = "white" {}
        _node_2382 ("node_2382", 2D) = "white" {}
        _yinlang_speed ("yinlang_speed", Float ) = 1
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
            uniform sampler2D _panner_texture; uniform float4 _panner_texture_ST;
            uniform sampler2D _beijing; uniform float4 _beijing_ST;
            uniform sampler2D _mask; uniform float4 _mask_ST;
            uniform float _node_5038;
            uniform sampler2D _panner_02; uniform float4 _panner_02_ST;
            uniform sampler2D _texture_02; uniform float4 _texture_02_ST;
            uniform sampler2D _led_texture; uniform float4 _led_texture_ST;
            uniform sampler2D _beijing_noise; uniform float4 _beijing_noise_ST;
            uniform sampler2D _glow_size; uniform float4 _glow_size_ST;
            uniform sampler2D _node_2382; uniform float4 _node_2382_ST;
            uniform float _yinlang_speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_9433 = _Time + _TimeEditor;
                float2 node_4456 = (i.uv0+(node_9433.g*_node_5038)*float2(0.5,1));
                float4 _panner_texture_var = tex2D(_panner_texture,TRANSFORM_TEX(node_4456, _panner_texture));
                float4 _beijing_var = tex2D(_beijing,TRANSFORM_TEX(i.uv1, _beijing));
                float4 node_8571 = _Time + _TimeEditor;
                float2 node_5039 = (i.uv1+node_8571.g*float2(0.2,0));
                float4 _beijing_noise_var = tex2D(_beijing_noise,TRANSFORM_TEX(node_5039, _beijing_noise));
                float4 node_2645 = _Time + _TimeEditor;
                float2 node_3973 = lerp((i.uv1*1.0+0.0),float2(0.5,0.5),(0.3*sin(node_2645.g)));
                float4 _glow_size_var = tex2D(_glow_size,TRANSFORM_TEX(node_3973, _glow_size));
                float2 node_8716 = (i.uv1+(ceil((frac((node_2645.g*_yinlang_speed))*10.0))*0.1)*float2(3,0));
                float4 _node_2382_var = tex2D(_node_2382,TRANSFORM_TEX(node_8716, _node_2382));
                float2 node_3169 = (i.uv0+node_8571.g*float2(0,-0.3));
                float4 _panner_02_var = tex2D(_panner_02,TRANSFORM_TEX(node_3169, _panner_02));
                float4 node_7255 = _Time + _TimeEditor;
                float2 node_8500 = (i.uv0+sin(node_7255.g)*float2(0,0.1));
                float4 _texture_02_var = tex2D(_texture_02,TRANSFORM_TEX(node_8500, _texture_02));
                float4 _led_texture_var = tex2D(_led_texture,TRANSFORM_TEX(i.uv1, _led_texture));
                float3 emissive = ((i.uv0.g*_panner_texture_var.rgb)+((_beijing_var.rgb*0.8)+(_beijing_var.rgb*_beijing_noise_var.r*0.5)+_glow_size_var.rgb+_node_2382_var.rgb)+_panner_02_var.rgb+_texture_02_var.rgb+_led_texture_var.a);
                float3 finalColor = emissive;
                float4 _mask_var = tex2D(_mask,TRANSFORM_TEX(i.uv1, _mask));
                return fixed4(finalColor,_mask_var.r);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
