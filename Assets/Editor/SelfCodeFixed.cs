using UnityEngine;
using System.Collections;
using System.IO;

/// <summary>
/// 模板脚本命名自动初始替换
/// </summary>
public class ScriptInitializer : UnityEditor.AssetModificationProcessor
{
    public static void OnWillCreateAsset(string path)
    {
        path = path.Replace(".meta", "");
        if (path.ToLower().EndsWith(".cs") || path.ToLower().EndsWith(".lua"))
        {
            string content = File.ReadAllText(path);

            content = content.Replace("#AUTHORNAME#", "Sam");
            content = content.Replace("#CREATETIME#", System.DateTime.Now.ToString());

            File.WriteAllText(path, content);
        }
    }
}