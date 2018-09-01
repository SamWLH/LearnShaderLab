Shader "Sam'Shader编程/03.Shader"
{

	Properties{

		_MainColor("主颜色",Color) = (1,.1,.5,1)
	}

	SubShader{

		Pass{

		Material{

		//将漫反射和环境光反射颜色设为相同
		//Diffuse(0.9,0.5,0.4,1)
		//Ambient(0.9,0.5,0.4,1)

		Diffuse[_MainColor]
		Ambient[_MainColor]
	}

		Lighting On
	}
	}
}
