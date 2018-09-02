Shader "Sam'Shader编程/Alpha纹理混合" {

    Properties{

        _MainTex("基本纹理",2D) = "White"{}
        _AssistTex("副纹理", 2D) = "White"{}

    }

        SubShader{

        Pass{
        //应用主纹理
        SetTexture[_MainTex]{combine texture}
        //使用相乘操作进行alpha混合
        SetTexture[_AssistTex]{combine texture * previous}
}

    }


}
