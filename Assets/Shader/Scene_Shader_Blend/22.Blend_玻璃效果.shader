Shader "Sam'Shader编程/22.Blend_玻璃效果"
{
    Properties
    {
        _Color("主颜色", Color) = (1,1,1,1)
        _MainTex("基本纹理(RGBA)", 2D) = "white"{}
        _Reflections("BaseGlose", Cube) = "skybox"{}
    }

    SubShader
    {
        Tags{"Queue" = "Transparent"}
        Pass
        {
            //进行纹理混合
            Blend One One
            //设置材质
            Material
            {
                Diffuse[_Color]
            }
            
            //开启灯光
            Lighting On

            //SetTexture[MainTex]
            //{
            //    combine texture * primary
            //}
            //和纹理相乘
            SetTexture[_Reflections]
            {
                //combine texture * previous
                //combine texture
                Matrix[_Reflections]
            }


        }


    }
}
