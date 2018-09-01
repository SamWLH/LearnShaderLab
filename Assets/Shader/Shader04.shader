﻿Shader "Sam'Shader编程/04.Shader" {
	Properties{
		_Color("主颜色",Color) = (1,1,1,0)
		_SpecColor("反射高光颜色",Color) = (1,1,1,1)
		_Emission("自发光颜色", Color) = (0,0,0,0)
		_Shininess("光泽度",Range(0.01,1)) = 0.7
	}

		SubShader{
		Pass{
		Material{
			Diffuse[_Color]
			Ambient[_Color]

			Shininess[_Shininess]
			Specular[_SpecColor]
			Emission[_Emission]
		}
		Lighting On
	}
	}

}
