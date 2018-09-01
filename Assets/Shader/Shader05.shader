Shader "Sam'Shader编程/05.Shader" {
	Properties{

		_MainTex("基本纹理",2D) = "White"{}
	}

		SubShader{
		Pass{

		SetTexture[_MainTexture]{combine texture}

		//Lighting On
}

}
		//Fallback"Diffuse"
}
