Shader "Sam'Shader编程/纹理的Alpha通道与自发光相混合" {

    Properties{

        _IlluminColor("自发光（RGB）",Color) = (1,1,1,1)
        _MainTex("主贴图",2D) = "White"
    }

        SubShader{

        Pass{
        //【1】设置白色的顶点光照  
        Material{

        Diffuse(1,1,1,1)
        Ambient(1,1,1,1)

    }

        Lighting On
        // 【3】将自发光颜色混合上纹理  
    //    SetTexture[_MainTex]{

    //    constantColor[_IlluminColor]
    //    // 使用纹理的alpha通道混合顶点颜色  
    //    combine constant lerp(texture) previous
    //    //combine constant * texture

    //}
        // 【4】乘以纹理  
        SetTexture[_MainTex]{ combine previous * texture }



    }

    }
}
