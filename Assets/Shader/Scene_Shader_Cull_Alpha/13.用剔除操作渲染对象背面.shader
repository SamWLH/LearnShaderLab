Shader "Sam'Shader编程/13.用剔除操作渲染对象背面"
{
    Properties
    {
        _Color("主颜色", Color) = (1,1,1,1)
        _SpecColor("高光颜色",Color) = (1,1,1,1)
        _Emission("光泽颜色",Color) = (0,0,0,0)
        _Shininess("光泽度",Range(0.01,0)) = 0.7
        _MainTex("基本纹理(RGB)-透明度(A)",2D) = "white"{}
    }


	SubShader
	{
        //---------------------------【通道一】------------------------------
        //说明：绘制对象的前面部分,使用简单的白色材质，并应用主纹理
		Pass
		{

			//设置定点光照
			Material
			{
				Emission[_Emission]
				Diffuse[_Color]
                Ambient[_Color]
                Specular[_SpecColor]
                Shininess[_Shininess]
			}
			//开启光照
			Lighting On
			////剔除正面（不绘制面向观察者的几何面）
		    //Cull Front

            SetTexture[_MainTex]
            {
                Combine Primary * texture
            }
		}
        //----------------------------------------------------------------------

        //--------------------------【通道二】-------------------------------
        //说明：采用亮蓝色来渲染背面
        Pass
        {
            Color(0,0,1,1)
            Cull Front
        }
        //----------------------------------------------------------------------



	}

}
