﻿Shader "Sam'Shader编程/01.Shader"
{
	//------------属性---------
	Properties
	{
		//纹理
		_MainTex("基本纹理",2D) = "White"{}
		_Color("颜色",Color) = (1,1,1,1)
			//_Box2D("2D",2D)=
			_Float("浮点数", Float) = 0.5
			_WaveScale("Wave Scale",Range(0.02, 0.15)) = 0.07


	}

		//------------子着色器-------
			SubShader{

			//----------------通道---------------
			Pass{

				Lighting On
				//SeparateSpecular
				SeparateSpecular On
			//ColorMaterial AmbientAndDiffuse
			ColorMaterial Emission

			//设置纹理为属性中选择的纹理
			//配一个纹理，其中TexturePropertyName必须为一个纹理，也就是在shader最开始的Properties中的属性。
			//在TextrueBlock中设置如何应用纹理，即纹理块控制纹理如何被应用。
			//而在纹理块中能执行3种命令：合并操作，矩阵操作、与常量颜色进行混合操作。
			SetTexture[_MainTex]{combine texture}


			}







		}


			//自带备胎
			Fallback "Diffuse"

}