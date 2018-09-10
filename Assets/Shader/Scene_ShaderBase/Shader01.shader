Shader "Sam'Shader编程/01.Shader"
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

			//关于分离的透明度和颜色混合（Separate Alpha & Color computation）

			//在默认情况下，混合公式被同时用于计算纹理的RGB通道和透明度。同时，我们也能指定针对透明度来单独计算，比如这样，将RGB操作和Alpha操作隔开：
			//SetTexture[_MainTex]{ combine previous *texture, previous + texture }
			//如上所述，我们对RGB的颜色做乘然后对Alpha透明度相加

			//Previous 是上一次SetTexture的结果
			//Primary  是来自光照计算的颜色或是当它绑定时的顶点颜色
			//Texture  是在SetTexture中被定义的纹理的颜色
			//Constant 是被ConstantColor定义的颜色


			}







		}


			//自带备胎
			Fallback "Diffuse"

}