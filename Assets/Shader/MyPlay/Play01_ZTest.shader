Shader "Sam'Shader编程/Play01_ZTest" {
    Properties{
        _MainTex("主纹理 (RGBA)", 2D) = "white" {}
    }
        SubShader
    {
        ZWrite On
        ZTest Always
        //ZTest Less
        Pass
        {

            //Color(1,0,0,1)
            SetTexture[_MainTex]{combine texture }
        }


    }

}
