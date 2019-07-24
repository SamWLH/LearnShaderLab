Shader "Sam'Shader编程/GrabPassInvert.Shader" {

	Properties{

		//ConstantColor color = {1,.5,.5,1}
	}

	SubShader{

		//再所有不透明几何体之后绘制
		Tags{"Queue" = "Transparent"}
		//捕获对象后的屏幕到——GrabTexture中
		GrabPass{}
		//用前面捕获的纹理渲染对象，并反相它的颜色  
		//纹理在基本的顶点光照计算完成之后被应用，
		//这也就是SetTexture 命令必须放置在通道的末尾的原因了
		//需要注意的是，SetTexture 命令在使用了片段着色器时不会生效；
		//因为在片段着色器下像素操作被完全描述在着色器中。


		//Previous 是上一次SetTexture的结果
		//Primary  是来自光照计算的颜色或是当它绑定时的顶点颜色
		//Texture  是在SetTexture中被定义的纹理的颜色
		//Constant 是被ConstantColor定义的颜色


		Pass{

			SetTexture[_GrabTexture]{
		//反向它的颜色
		combine one - texture

		//constantColor (1,1,1,1)
		//combine constant  * texture
			}

	   /* SetTexture[_GrabTexture]{
		combine previous *texture, previous + texture
			}*/
		}
	}


}
