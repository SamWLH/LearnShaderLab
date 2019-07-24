﻿// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Sam'Shader两种光照模型_vf/LambertDiffuse_vert" {
    Properties{
        _Diffuse("Diffuse", Color) = (1, 1, 1, 1)//控制材质的漫反射颜色
    }
        SubShader{
        Tags{ "LightMode" = "ForwardBase" }
        Pass{

        CGPROGRAM
#pragma vertex vert
#pragma fragment frag 
#include "UnityCG.cginc"
#include "Lighting.cginc" 

        fixed4 _Diffuse;
    struct a2v {
        float4 vertex : POSITION;
        float3 normal : NORMAL;
    };
    struct v2f {
        float4 pos : SV_POSITION;
        fixed3 color : COLOR;
    };
    v2f vert(a2v v) {
        v2f o;
        // Transform the vertex from object space to projection space
        o.pos = UnityObjectToClipPos(v.vertex);//mul(UNITY_MATRIX_MVP,v.vertex) 坐标转换 模型空间到 
        
        // Get ambient term
        fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz;
        
        // Transform the normal from object space to world space
        fixed3 worldNormal = normalize(mul(v.normal, (float3x3)unity_WorldToObject));//法线，转换到世界坐标，并且归一化
                                                                                     // Get the light direction in world space
        fixed3 worldLight = normalize(_WorldSpaceLightPos0.xyz);
        // Compute diffuse term
        fixed3 diffuse = _LightColor0.rgb * _Diffuse.rgb * saturate(dot(worldNormal, worldLight));

        o.color = ambient + diffuse;

        return o;
    }
    fixed4 frag(v2f i) : SV_Target{
        return fixed4(i.color, 1.0);
    }
        ENDCG
    }
    }
        //FallBack "Diffuse"
}
