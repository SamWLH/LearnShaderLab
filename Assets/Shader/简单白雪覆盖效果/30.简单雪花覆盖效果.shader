Shader "Sam'Shader编程/30.简单雪花覆盖效果" {

Properties{
	_MainTex("Main Color",2D) = "white"{}
	_BumpTex("Normal Tex",2D) = "white"{}
	_Snow("Level of snow", Range(1,-1)) = 1
	_SnowColor("Snow Color",Color) = (1,1,1,1)
	_SnowDirection("Snow dir", Vector) = (0,1,0)
	_SnowDepth("Snow depth",Range(0,1))= 0

}

SubShader{

Pass{

CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#inlude "UnityCG.cginc"

sampler2D _MainTex;
sampler2D _BumpTex;
float _Snow;
fixed _SnowColor;
float3 _SnowDirection;
float _SnowDepth;

struct v2f{

float2 pos : SV_POSITION;
float2 uv_Bump : TEXCOORD0;
float3 worldNormal :TEXCOORD1;

}

v2f vert(appdata_full v){

	v2f o;
	o.pos = UnityObjectToClipPos(v.vertex);
	o.uv_Bump = TRANSFORM_TEX(v.texcoord, _MainTex);

	return o;
	
}

fixed4 frag (v2f i): SV_Target{
	fixed4 col;
	col = tex2D(_MainTex, i.uv_Bump);


	return col;
}


ENDCG
}

}



}
