// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33012,y:32879,varname:node_3138,prsc:2|emission-3542-OUT;n:type:ShaderForge.SFN_Tex2d,id:7319,x:31748,y:32334,ptovrint:False,ptlb:maintex,ptin:_maintex,varname:_maintex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b6e043e13faf58849ac8891e2bbbb29d,ntxv:0,isnm:False|UVIN-7095-OUT;n:type:ShaderForge.SFN_TexCoord,id:9923,x:31270,y:33273,varname:node_9923,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:8123,x:31938,y:33347,ptovrint:False,ptlb:mask,ptin:_mask,varname:_mask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3c62588742386e64483e8346d8cd3e34,ntxv:0,isnm:False|UVIN-3115-OUT;n:type:ShaderForge.SFN_Multiply,id:7216,x:32269,y:33270,varname:node_7216,prsc:2|A-8069-OUT,B-8123-RGB;n:type:ShaderForge.SFN_Multiply,id:3705,x:32162,y:32576,varname:node_3705,prsc:2|A-7319-RGB,B-8770-RGB,C-4056-OUT,D-6495-OUT;n:type:ShaderForge.SFN_Color,id:8770,x:31748,y:32564,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Time,id:6180,x:31315,y:32742,varname:node_6180,prsc:2;n:type:ShaderForge.SFN_Sin,id:3786,x:31631,y:32769,varname:node_3786,prsc:2|IN-1466-OUT;n:type:ShaderForge.SFN_Add,id:4056,x:31963,y:32805,varname:node_4056,prsc:2|A-3657-OUT,B-8301-OUT;n:type:ShaderForge.SFN_Vector1,id:8301,x:31666,y:32899,varname:node_8301,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Abs,id:3657,x:31798,y:32769,varname:node_3657,prsc:2|IN-3786-OUT;n:type:ShaderForge.SFN_Multiply,id:1466,x:31499,y:32841,varname:node_1466,prsc:2|A-6180-T,B-9614-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9614,x:31326,y:32948,ptovrint:False,ptlb:FlashTime_speed,ptin:_FlashTime_speed,varname:_FlashTime_speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7844,x:32477,y:33117,varname:node_7844,prsc:2|A-3705-OUT,B-7216-OUT;n:type:ShaderForge.SFN_Add,id:3542,x:32668,y:32901,varname:node_3542,prsc:2|A-3705-OUT,B-7844-OUT;n:type:ShaderForge.SFN_Vector1,id:6495,x:31923,y:32941,varname:node_6495,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:3115,x:31647,y:33300,varname:node_3115,prsc:2|A-9923-UVOUT,B-8359-OUT;n:type:ShaderForge.SFN_Time,id:8416,x:31084,y:33410,varname:node_8416,prsc:2;n:type:ShaderForge.SFN_Append,id:2223,x:31328,y:33589,varname:node_2223,prsc:2|A-5651-X,B-5651-Y;n:type:ShaderForge.SFN_Vector4Property,id:5651,x:30402,y:32848,ptovrint:False,ptlb:UVspeed_Mask_Texture,ptin:_UVspeed_Mask_Texture,varname:_UVspeed_Mask_Texture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_Multiply,id:8359,x:31460,y:33482,varname:node_8359,prsc:2|A-8416-T,B-2223-OUT;n:type:ShaderForge.SFN_TexCoord,id:6302,x:30898,y:32435,varname:node_6302,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Add,id:7095,x:31275,y:32462,varname:node_7095,prsc:2|A-6302-UVOUT,B-2231-OUT;n:type:ShaderForge.SFN_Time,id:2775,x:30712,y:32572,varname:node_2775,prsc:2;n:type:ShaderForge.SFN_Append,id:3084,x:30956,y:32751,varname:node_3084,prsc:2|A-5651-Z,B-5651-W;n:type:ShaderForge.SFN_Multiply,id:2231,x:31088,y:32644,varname:node_2231,prsc:2|A-2775-T,B-3084-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8069,x:31936,y:33140,ptovrint:False,ptlb:Mask_Bright,ptin:_Mask_Bright,varname:_Mask_Bright,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:8770-5651-7319-9614-8123-8069;pass:END;sub:END;*/

Shader "cgwell/flash_mask" {
    Properties {
        _color ("color", Color) = (0.5,0.5,0.5,1)
        _UVspeed_Mask_Texture ("UVspeed_Mask_Texture", Vector) = (0,1,1,0)
        _maintex ("maintex", 2D) = "white" {}
        _FlashTime_speed ("FlashTime_speed", Float ) = 1
        _mask ("mask", 2D) = "white" {}
        _Mask_Bright ("Mask_Bright", Float ) = 1
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _maintex; uniform float4 _maintex_ST;
            uniform sampler2D _mask; uniform float4 _mask_ST;
            uniform float4 _color;
            uniform float _FlashTime_speed;
            uniform float4 _UVspeed_Mask_Texture;
            uniform float _Mask_Bright;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_2775 = _Time + _TimeEditor;
                float2 node_7095 = (i.uv1+(node_2775.g*float2(_UVspeed_Mask_Texture.b,_UVspeed_Mask_Texture.a)));
                float4 _maintex_var = tex2D(_maintex,TRANSFORM_TEX(node_7095, _maintex));
                float4 node_6180 = _Time + _TimeEditor;
                float3 node_3705 = (_maintex_var.rgb*_color.rgb*(abs(sin((node_6180.g*_FlashTime_speed)))+0.3)*2.0);
                float4 node_8416 = _Time + _TimeEditor;
                float2 node_3115 = (i.uv1+(node_8416.g*float2(_UVspeed_Mask_Texture.r,_UVspeed_Mask_Texture.g)));
                float4 _mask_var = tex2D(_mask,TRANSFORM_TEX(node_3115, _mask));
                float3 emissive = (node_3705+(node_3705*(_Mask_Bright*_mask_var.rgb)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
