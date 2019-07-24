// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:True;n:type:ShaderForge.SFN_Final,id:3138,x:33116,y:32731,varname:node_3138,prsc:2|emission-9626-OUT,alpha-5531-OUT;n:type:ShaderForge.SFN_Tex2d,id:5339,x:32280,y:32788,ptovrint:False,ptlb:Mantex,ptin:_Mantex,varname:node_5339,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3366-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4336,x:32237,y:33179,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_4336,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1331-UVOUT;n:type:ShaderForge.SFN_VertexColor,id:8670,x:31677,y:32900,varname:node_8670,prsc:2;n:type:ShaderForge.SFN_Color,id:5095,x:32280,y:32613,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5095,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:9626,x:32840,y:32788,varname:node_9626,prsc:2|A-5095-RGB,B-5339-RGB,C-6110-OUT,D-1607-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6110,x:32276,y:33010,ptovrint:False,ptlb:bright,ptin:_bright,varname:node_6110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:5531,x:32863,y:33045,varname:node_5531,prsc:2|A-5339-A,B-5095-A,C-8670-A;n:type:ShaderForge.SFN_TexCoord,id:2079,x:31831,y:32737,varname:node_2079,prsc:2,uv:0;n:type:ShaderForge.SFN_Rotator,id:3366,x:32057,y:32788,varname:node_3366,prsc:2|UVIN-2079-UVOUT,ANG-6164-OUT;n:type:ShaderForge.SFN_Multiply,id:6164,x:31891,y:32954,varname:node_6164,prsc:2|A-8670-R,B-7544-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7544,x:31697,y:33091,ptovrint:False,ptlb:radom_Maintex,ptin:_radom_Maintex,varname:node_7544,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_TexCoord,id:9813,x:31801,y:33124,varname:node_9813,prsc:2,uv:0;n:type:ShaderForge.SFN_Rotator,id:1331,x:32033,y:33179,varname:node_1331,prsc:2|UVIN-9813-UVOUT,ANG-6195-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6195,x:31801,y:33283,ptovrint:False,ptlb:radom_shadown,ptin:_radom_shadown,varname:_node_7544_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Power,id:5948,x:32414,y:33179,varname:node_5948,prsc:2|VAL-4336-RGB,EXP-86-OUT;n:type:ShaderForge.SFN_ValueProperty,id:86,x:32210,y:33363,ptovrint:False,ptlb:mask_power,ptin:_mask_power,varname:node_86,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Clamp01,id:1607,x:32584,y:33179,varname:node_1607,prsc:2|IN-5948-OUT;proporder:5095-6110-7544-5339-4336-6195-86;pass:END;sub:END;*/

Shader "cgwell/VolunSmoke" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _bright ("bright", Float ) = 1
        _radom_Maintex ("radom_Maintex", Float ) = 0
        _Mantex ("Mantex", 2D) = "white" {}
        _Mask ("Mask", 2D) = "white" {}
        _radom_shadown ("radom_shadown", Float ) = 0
        _mask_power ("mask_power", Float ) = 0.1
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
            uniform sampler2D _Mantex; uniform float4 _Mantex_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _Color;
            uniform float _bright;
            uniform float _radom_Maintex;
            uniform float _radom_shadown;
            uniform float _mask_power;
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
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_3366_ang = (i.vertexColor.r*_radom_Maintex);
                float node_3366_spd = 1.0;
                float node_3366_cos = cos(node_3366_spd*node_3366_ang);
                float node_3366_sin = sin(node_3366_spd*node_3366_ang);
                float2 node_3366_piv = float2(0.5,0.5);
                float2 node_3366 = (mul(i.uv0-node_3366_piv,float2x2( node_3366_cos, -node_3366_sin, node_3366_sin, node_3366_cos))+node_3366_piv);
                float4 _Mantex_var = tex2D(_Mantex,TRANSFORM_TEX(node_3366, _Mantex));
                float node_1331_ang = _radom_shadown;
                float node_1331_spd = 1.0;
                float node_1331_cos = cos(node_1331_spd*node_1331_ang);
                float node_1331_sin = sin(node_1331_spd*node_1331_ang);
                float2 node_1331_piv = float2(0.5,0.5);
                float2 node_1331 = (mul(i.uv0-node_1331_piv,float2x2( node_1331_cos, -node_1331_sin, node_1331_sin, node_1331_cos))+node_1331_piv);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(node_1331, _Mask));
                float3 emissive = (_Color.rgb*_Mantex_var.rgb*_bright*saturate(pow(_Mask_var.rgb,_mask_power)));
                float3 finalColor = emissive;
                return fixed4(finalColor,(_Mantex_var.a*_Color.a*i.vertexColor.a));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
