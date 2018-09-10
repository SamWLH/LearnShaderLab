Shader "Sam'Shader编程/Mode_Surface Shader" {


    //在Unity中，我们若要实现新的表面着色器时，可以根据这个模板，进行一步添加子着色器和新的参数与特性。
    //这个Shader模板的脉络很清晰，先是定义一些属性，然后在SubShader中设置渲染模式，层次细节LOD的值，
    //然后开启一个CG编程语言模块，写一些编译指令#pragma，声明一下变量让属性值在CG块中可见，定义输入结构，然后填充一下表面着色函数即可。
    //注意：专门强调一句，SurfaceShader不能使用Pass，一使用就报错，我们直接在SubShader中实现和填充代码就可以了。
    //Standard Surface Shader模板详细注释的Shader代码如下：


    //------------------------------------【属性值】------------------------------------

    Properties

    {

        //主颜色

        _Color("Color", Color) = (1,1,1,1)

        //主纹理

        _MainTex("Albedo (RGB)", 2D) = "white" {}

    //光泽度

    _Glossiness("Smoothness", Range(0,1)) = 0.5

        //金属度

        _Metallic("Metallic", Range(0,1)) = 0.0

    }



        //------------------------------------【唯一的子着色器】------------------------------------

        SubShader

    {

        //【注意：Surface Shader不能使用Pass，直接在SubShader中实现即可】



        //渲染类型设置：不透明

        Tags{ "RenderType" = "Opaque" }



        //细节层次设为：200

        LOD 200



        //===========开启CG着色器语言编写模块===========

        CGPROGRAM



        //编译指令：告知编译器表明着色函数的名称为surf

        //Standard表示光照模型为Unity标准版光照模型

        //fullforwardshadows表示在正向渲染路径中支持所有阴影类型

#pragma surface surf Standard fullforwardshadows



            //编译指令: 指定着色器编译目标为Shader Model 3.0

#pragma target 3.0



            //变量的声明

            sampler2D _MainTex;



    //表面输入结构体

    struct Input

    {

        float2 uv_MainTex;//纹理坐标

    };



    //变量的声明

    half _Glossiness;

    half _Metallic;

    fixed4 _Color;



    //--------------------------------【表面着色函数】-----------------------------

    //输入：表面输入结构体

    //输出：Unity内置的SurfaceOutputStandard结构体

    //SurfaceOutputStandard原型如下：

    /*

    struct SurfaceOutputStandard

    {

    fixed3 Albedo;                  // 漫反射颜色

    fixed3 Normal;                  // 切线空间法线

    half3 Emission;                 //自发光

    half Metallic;                           // 金属度；取0为非金属, 取1为金属

    half Smoothness;             // 光泽度；取0为非常粗糙, 取1为非常光滑

    half Occlusion;                 // 遮挡(默认值为1)

    fixed Alpha;                      // 透明度

    };

    */

    //---------------------------------------------------------------------------------

    void surf(Input IN, inout SurfaceOutputStandard o)

    {

        //【1】漫反射颜色为主纹理对应的纹理坐标，并乘以主颜色

        fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;

        //【2】将准备好的颜色的rgb分量作为漫反射颜色

        o.Albedo = c.rgb;

        //【3】金属度取自属性值

        o.Metallic = _Metallic;

        //【4】光泽度也取自属性值

        o.Smoothness = _Glossiness;

        //【5】将准备好的颜色的alpha分量作为Alpha分量值

        o.Alpha = c.a;

    }



    //===========结束CG着色器语言编写模块===========

    ENDCG

    }

        //备胎为漫反射

        FallBack"Diffuse"

}
