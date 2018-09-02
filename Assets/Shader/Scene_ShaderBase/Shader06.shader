Shader "Sam'Shader编程/06.Shader" {
    Properties{
        _MainTex("基本纹理",2D) = "White"{}
        _Color("主颜色",Color) = (1,1,1,0)
       _SpecColor("高光颜色",Color) = (1,1,1,0)
       _Emission("自发光颜色", Color) = (.5,.5,.5,1)
       _Shininess("光泽度", Range(0.01,1)) = 0.5

       _SelfTex("副纹理",2D) = "White"{}
    }

        SubShader{
            Pass{

            Material{

        //Special
        Diffuse[Color]
        Ambient[_Color]

        Shininess[_Shininess]
        Specular[_SpecColor]
        Emission[_Emission]
}

    Lighting On
    SeparateSpecular On
    SetTexture[_MainTex]{
            Combine texture * primary DOUBLE,texture * primary
    }

    }

    }
}
