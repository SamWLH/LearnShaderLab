Shader "Sam'Shader编程/23.Blend_玻璃效果" 
{
    Properties{
        _Color("Main Color", Color) =(1,1,1,1)
        _MainTex("Base Tex(RGBA)",2D) = "white"{}
        _Reflections("Base Gloss", Cube) = "skybox"
    }
	
        SubShader
        {


            Pass
            {
                Tags{"Queue" = "Transparent"}

                Blend SrcAlpha OneMinusSrcAlpha

                Material{
                    
                    Diffuse[_Color]

                }
                
                Lighting On

                SetTexture[MainTex]{

                    combine texture * primary double, texture * primary
                }

            }

            Pass
            {
                Blend One One

                Material{

                    Diffuse[_Color]
                }

                Lighting On

                SetTexture[_Reflections]{
                    combine texture
                    Matrix[_Reflections]
                }

            }







        }
}
