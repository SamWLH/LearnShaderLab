// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

Shader "Sam'Shader两种光照模型_vf/Specular_f" {
    Properties{
        _Diffuse("Diffuse",Color) = (1,1,1,1)
    _Specular("Specular",Color) = (1,1,1,1)
    _Gloss("Gloss",Range(8.0,256)) = 20
    }
        SubShader{
        Tags{ "LightMode" = "ForwardBase" }

        Pass{
        CGPROGRAM
#pragma vertex vert
#pragma fragment frag
        // Use shader model 3.0 target, to get nicer looking lighting
#pragma target 3.0
#include "UnityCG.cginc"
#include "Lighting.cginc"

            fixed4 _Diffuse;
        fixed4 _Specular;
        float _Gloss;
        struct a2v {
            fixed4 vertex : POSITION;
            fixed4 normal : NORMAL;
        };
        struct v2f {
            fixed4 pos : SV_POSITION;//顶点着色器输出的
            fixed4 color : COLOR;
        };
        v2f vert(a2v v) {
            v2f o;
            o.pos = UnityObjectToClipPos(v.vertex);
            float3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz;
            fixed3 worldlight = normalize(_WorldSpaceLightPos0.xyz);
            fixed3 worldnormal = normalize(mul(v.normal, unity_WorldToObject));//(float3 * 3)
            fixed3 dif = _LightColor0.rgb * _Diffuse.rgb * saturate(dot(worldnormal,worldlight));
            fixed3 reflectDir = normalize(reflect(-worldlight,worldnormal));
            //_WorldCameraPos得到的是世界空间下摄像机的位置，把顶点位置从模型空间变换到世界空间下，再通过和_WorldCameraPos相减即可得到世界空间下视角方向
            fixed3 viewDir = normalize(_WorldSpaceCameraPos.xyz - mul(unity_ObjectToWorld,v.vertex).xyz);
            fixed3 specular = _LightColor0.rgb * _Specular.rgb * pow(saturate(dot(reflectDir,viewDir)),_Gloss);
            o.color.rgb = ambient + dif + specular;
            return o;
        }
        fixed4 frag(v2f i) :SV_Target{
            return fixed4(i.color.rgb,1.0);
        }
            ENDCG
    }
    }
        //FallBack "Specular"
}
