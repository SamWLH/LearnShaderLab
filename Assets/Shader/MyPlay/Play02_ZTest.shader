Shader "Sam'Shader编程/Play02_ZTest" {
    Properties{
        _MainTex("主纹理 (RGBA)", 2D) = "white" {}
    }
        SubShader
    {
        //ZWrite Off
        //ZTest Less
        Pass
    {

        //Color(0,1,0,1)
        SetTexture[_MainTex]{ combine texture }
    }


    }
}
