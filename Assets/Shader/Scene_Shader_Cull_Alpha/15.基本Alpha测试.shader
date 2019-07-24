Shader "Sam'Shader编程/15.基本Alpha测试"
{
    Properties
    {
        _MainTex("基本纹理(RGBA)", 2D) = "white"{}
    }

        SubShader
    {

        //----------------------------【通道】-------------------------------
        //		说明：进行Alpha测试操作，且只渲染透明度大于60%的像素
        //----------------------------------------------------------------------
        Pass
        {
            
            //      AlphaTest comparison AlphaValue
            //--Greater
            //Only render pixels whose alpha is greater than AlphaValue.大于
            //--GEqual
            //Only render pixels whose alpha is greater than or equal to AlphaValue.大于等于
            //--Less
            //Only render pixels whose alpha value is less than AlphaValue.小于
            //--LEqual
            //Only render pixels whose alpha value is less than or equal to from AlphaValue.小于等于
            //--Equal
            //Only render pixels whose alpha value equals AlphaValue.等于
            //--NotEqual
            //Only render pixels whose alpha value differs from AlphaValue.不等于
            //--Always
            //Render all pixels.This is functionally equivalent to AlphaTest Off.
            //渲染所有像素，等于关闭透明度测试AlphaTest Off
            //--Never
            //Don't render any pixels. 不渲染任何像素

            //而AlphaValue为一个范围在0到1之间的浮点值。
            //也可以是一个指向浮点属性或是一个范围属性，
            //在后一种情况下需要使用标准的方括号写法标注索引名字，如([变量名]).

            // 只渲染透明度大于60%的像素
            AlphaTest Greater 0.6
            SetTexTure[_MainTex]{combine texture}
        }

    }
}
