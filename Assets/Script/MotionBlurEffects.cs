using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class MotionBlurEffects : MonoBehaviour
{
    public Shader curShader;                //着色器
    //private Vector4 screenResolution;       //屏幕分辨率
    private Material curMaterial;           //当前材质


    //Iteration Number- 迭代次数
    //Intensity - 模糊强度
    //Offset X - X方向上的偏移
    //Offset Y - Y方向上的偏移

    [Range(5, 50)]
    public float IterationNumber = 15;
    [Range(-0.5f, 0.5f)]
    public float Intensity = 0.125f;
    [Range(-2, 2)]
    public float OffesetX = 0.5f;
    [Range(-2, 2)]
    public float OffesetY = 0.5f;

    public static float ChangerValue;
    public static float ChangerValue2;
    public static float ChangerValue3;
    public static float ChangerValue4;

    Material material
    {
        get
        {
            if (curMaterial == null)
            {
                curMaterial = new Material(curShader);
                curMaterial.hideFlags = HideFlags.HideAndDontSave;
            }

            return curMaterial;
        }
    }


    void Start()
    {
        //
        ChangerValue = Intensity;
        ChangerValue2 = OffesetY;
        ChangerValue3 = OffesetX;
        ChangerValue4 = IterationNumber;

        curShader = Shader.Find("Sam'Shader编程/1.径向模糊特效标准版");

        //判断是否支持屏幕特效
        if (!SystemInfo.supportsImageEffects)
        {
            enabled = false;
            return;
        }

    }


    /// <summary>
    /// 此函数在当完成所有渲染图片后被调用，用来渲染图片后期效果
    /// </summary>
    void OnRenderImage(RenderTexture sourceTex, RenderTexture destTex)
    {
        if (curShader != null)
        {
            //设置Shader 中的外部变量
            material.SetFloat("_IterationNumber", IterationNumber);
            material.SetFloat("_Value", Intensity);
            material.SetFloat("_Value2", OffesetX);
            material.SetFloat("_Value3", OffesetY);
            material.SetVector("_ScreenResolution", new Vector4(sourceTex.width, sourceTex.height, 0, 0));

            //拷贝源纹理到目标显然纹理，加上我们的材质效果
            Graphics.Blit(sourceTex, destTex, material);
        }
        else
        {


            //第一个参数，Texture类型的source，原始纹理。
            //第二个参数，RenderTexture类型的dest，目标渲染纹理，若为null，表示直接将原始纹理拷贝到屏幕之上。
            //第三个参数，Material类型的mat，使用的材质（其实也就是Shader），根据不同材质的准备，就是在这里实现后期的效果的。
            //第四个参数，int类型的pass，有默认值 - 1，表示使用所有的pass。用于指定使用哪一个pass。

            //直接拷贝源纹理到目标纹理
            Graphics.Blit(sourceTex, destTex);
        }

    }

    //此函数在编辑器中该脚本的某个值发生了改变后被调用
    void OnValidate()
    {
        ChangerValue4 = IterationNumber;
        ChangerValue = Intensity;
        ChangerValue2 = OffesetX;
        ChangerValue3 = OffesetY;
    }

    void Update()
    {
        if (Application.isPlaying)
        {
            IterationNumber = ChangerValue4;
            Intensity = ChangerValue;
            OffesetX = ChangerValue2;
            OffesetY = ChangerValue3;

        }

#if UNITY_EDITOR
        if (!Application.isPlaying)
        {
            curShader = Shader.Find("Sam'Shader编程/1.径向模糊特效标准版");
        }

#endif

    }

    void OnDisable()
    {
        if (curMaterial)
        {
            DestroyImmediate(curMaterial);
        }
    }

}
