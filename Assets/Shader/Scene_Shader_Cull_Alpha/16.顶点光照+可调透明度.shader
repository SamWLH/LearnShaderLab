Shader "Sam'Shader编程/16.顶点光照+可调透明度" 
{
	Properties
	{
		_Color("主颜色",Color) = (1,1,1,0)
		_SpecColor("高光颜色",Color) = (1,1,1,1)
		_Emission("光泽颜色",Color) = (0,0,0,0)
		_Shininess("光泽度",Range(0.01,1)) = 0.7
		_MainTex("基本纹理(RGBA)",2D) = "white"{}
		_CutOff("Alpha透明阈值",Range(0,1)) = 0.5

	}
	

        SubShader
        {
            Pass
            {
                // 【1】使用Cutoff参数定义能被渲染的透明度阈值
                AlphaTest Greater [_CutOff]

                //【2】设置顶点光照参数值
                Material
                {
                    Diffuse[_Color]
                    Ambient[_Color]
                    Emission[_Emission]
                    Shininess[_Shininess]
                    Specular[_SpecColor]
                }

                //【3】开启光照
                Lighting On
                // 【4】进行纹理混合
                SetTexture[_MainTex]{Combine primary * texture}
            }

        }
}
