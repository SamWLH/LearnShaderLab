// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

Shader "Sam'Shader两种光照模型_vf/Specular_v" {
    //高光反射部分的计算是非线性的，而在顶点着色器中计算光照在进行插值的过程是线性的，破坏了原计算的非线性关系，就会出现较大的问题。
    //  2.逐顶点实现高光反射光照模型
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
            fixed3 worldNormal : TEXCOORD0;
            fixed3 worldPos : TEXCOORD1;
        };
        v2f vert(a2v v) {
            v2f o;
            o.pos = UnityObjectToClipPos(v.vertex);
            o.worldNormal = mul(v.normal,unity_WorldToObject);//(float3 * 3)
            o.worldPos = mul(unity_ObjectToWorld,v.vertex).xyz;
            return o;
        }
        fixed4 frag(v2f i) :SV_Target{
            fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz;
            fixed3 worldnormal = normalize(i.worldNormal);
            fixed3 worldlight = normalize(_WorldSpaceLightPos0.xyz);
            fixed3 dif = _LightColor0.rgb * _Diffuse.rgb * saturate(worldnormal) * saturate(worldlight);
            fixed3 reflectDir = reflect(-worldlight, worldnormal);
            fixed3 viewDir = normalize(_WorldSpaceCameraPos.xyz - i.pos.xyz);
            //灯光方向和视角方向的半角方向 BlinnPhong
            float3 halfVector = normalize(worldlight + viewDir);
            float NdotL = max(0, dot(viewDir, halfVector));
            fixed specular = _LightColor0.rgb * _Specular.rgb * pow(NdotL,_Gloss);
            return fixed4(ambient + dif + specular,1.0);
        }
            ENDCG
    }
    }
        //FallBack "Specular"
}