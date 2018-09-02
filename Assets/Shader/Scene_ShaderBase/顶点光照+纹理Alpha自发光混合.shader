Shader "Sam'Shader编程/顶点光照+纹理Alpha自发光混合" {

    Properties{

        _IlluminCol("自发光颜色",Color) = (1,1,1,1)
        _Color("主颜色",Color) = (1,1,1,1)
        _SpecColor("高光颜色",Color) = (1,1,1,1)
        _Emission("光泽颜色",Color) = (1,1,1,1)
        _Shininess("光泽度",Range(0.01,1)) = 0.7
        _MainTex("基础纹理", 2D) = "White"{}
    }

        SubShader{
        Pass{

        Material{

        Diffuse[_Color]
        Ambient[_Color]
        Shininess[_Shininess]
        Specular[_SpecColor]
        Emission[_Emission]
        }

        Lighting On

        //------ - 开启独立镜面反射----
        SeparateSpecular On

        // 【4】将自发光颜色混合上纹理  
        SetTexture[_MainTex]
    {
        // 使颜色属性进入混合器  
        ConstantColor[_IlluminCol]
        // 使用纹理的alpha通道插值混合顶点颜色  
        combine constant lerp(texture) previous
    }

        // 【5】乘上纹理  
        SetTexture[_MainTex]
    {
        combine texture * previous
    }

        //【6】乘以顶点纹理  
        SetTexture[_MainTex]
    {
        combine previous * primary DOUBLE, previous * primary
    }


}

    }



}
