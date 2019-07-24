Shader "Sam'Shader编程/17.简单的植被Shader" 
{
    Properties
    {
        _Color("主颜色", Color) = (1,1,1,0)
        _MainTex("基本纹理(RGBA)", 2D) = "white"{}
        _Cutoff("Alpha透明的阈值", Range(0,1)) = .5
    }

        SubShader
        {
            //【1】定义材质
            Material
            {
                Diffuse[_Color]
                Ambient[_Color]
            }

            //【2】开启光照
            Lighting On
            //【3】关闭裁剪，渲染所有面，用于接下来渲染几何体的两面
            Cull Off

            //【通道一】 
            // 说明：渲染所有超过[_Cutoff] 不透明的像素
            Pass
            {
                AlphaTest Greater[_Cutoff]
                SetTexture[_MainTex]
                {
                    //分离的透明度和颜色混合
                    combine texture * primary, texture               
                }
            }

            //【通道二】
            // 说明：渲染半透明的细节
            Pass
            {
                // 不写到深度缓冲中
                ZWrite Off
                // 不写已经写过的像素
                ZTest Less
                // 深度测试中，只渲染小于或等于的像素值
                AlphaTest LEqual[_Cutoff]
                // 设置透明度混合
                Blend SrcAlpha OneMinusSrcAlpha
                // 进行纹理混合
                SetTexture[_MainTex]
                {
                    combine texture * primary, texture
                }


            }
        }

}
