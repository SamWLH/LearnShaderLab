// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "cgwell/Alpha Blended Mask UI" 
{
	Properties 
	{
		
		_TintColor ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
		_MainTex ("Particle Texture", 2D) = "white" {}
		_Mask ("Mask ( R Channel )", 2D) = "white" {}
		[HideInInspector]_Center ("Center",Vector) = (0,0,0,1)
		[HideInInspector]_Scale ("Scale",Vector) = (1,1,1,1)
		[HideInInspector]_Normal ("Normal",Vector) = (0,0,1,0)
		_MinX("Min X", Float) = -10
		_MaxX("Max X", Float) = 10
		_MinY("Min Y", Float) = -10
		_MaxY("Max Y", Float) = 10
		/*_StencilComp("Stencil Comparison", Float) = 8

		_Stencil("Stencil ID", Float) = 0

		_StencilOp("Stencil Operation", Float) = 0

		_StencilWriteMask("Stencil Write Mask", Float) = 255

		_StencilReadMask("Stencil Read Mask", Float) = 255

		_ColorMask("Color Mask", Float) = 15*/
	}

	
	Category 
	{
		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
		Blend SrcAlpha OneMinusSrcAlpha
		Cull Off Lighting Off ZWrite Off
		
		SubShader 
		{
			/*Stencil

			{

				Ref[_Stencil]

				Comp[_StencilComp]

				Pass[_StencilOp]

				ReadMask[_StencilReadMask]

				WriteMask[_StencilWriteMask]

			}

			ColorMask[_ColorMask]*/
			Pass 
			{
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#pragma fragmentoption ARB_precision_hint_fastest
				#pragma multi_compile SCALE_OFF SCALE_ON
				#pragma multi_compile MIRROR_OFF MIRROR_ON
				#pragma multi_compile MESH BILLBOARD
				//#pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2
				#include "UnityCG.cginc"

				sampler2D _MainTex;
				sampler2D _Mask;
				fixed4 _TintColor;
				/*float _MinX;
				float _MaxX;
				float _MinY;
				float _MaxY;*/
				struct appdata_t 
				{
					float4 vertex : POSITION;
					fixed4 color : COLOR;
					float2 texcoord : TEXCOORD0;
				};

				struct v2f 
				{
					float4 vertex : SV_POSITION;
					fixed4 color : COLOR;
					float2 texcoord : TEXCOORD0;
					float2 texcoordMask : TEXCOORD1;
					float3 vpos : TEXCOORD2;
				};
			
				float4 _MainTex_ST;
				float4 _Mask_ST;

				float4 _Center;
				float4 _Scale;
				float4 _Normal;

				float _MinX;
				float _MaxX;
				float _MinY;
				float _MaxY;

				uniform float4x4 _Camera2World;

				v2f vert (appdata_t v)
				{
					v2f o;
					o.vpos = v.vertex.xyz;
					
					#if SCALE_ON
					float4 worldpos;
					#if BILLBOARD
					worldpos = mul(_Camera2World,v.vertex);
					#else //BILLBOARD
					worldpos = mul(unity_ObjectToWorld,v.vertex);		
					#endif //BILLBOARD
					#if MIRROR_ON
					float3 srcDir = _Center.xyz - worldpos.xyz;
					float3 refDir = reflect(srcDir,_Normal.xyz);
					refDir.y = -srcDir.y;
					worldpos.xyz = refDir *_Scale.xyz + _Center.xyz;
					#else //MIRROR_ON 
					worldpos.xyz = (worldpos.xyz-_Center.xyz)*_Scale.xyz + _Center.xyz;
					#endif //MIRROR_ON 
					o.vertex = mul(UNITY_MATRIX_VP, worldpos);
					#else //SCALE_ON
					 o.vertex = UnityObjectToClipPos(v.vertex);
					#endif //SCALE_ON

					o.color = v.color;
					o.texcoord = TRANSFORM_TEX(v.texcoord,_MainTex);
					o.texcoordMask = TRANSFORM_TEX(v.texcoord,_Mask);

					return o;
				}
			
				fixed4 frag (v2f i) : SV_Target
				{
					fixed4 c = tex2D(_MainTex, i.texcoord);
					c.a *= tex2D(_Mask, i.texcoordMask).r;

					//fixed4 c = 2.0f * i.color * _TintColor * tex2D(_MainTex, i.texcoord);
					c.a *= (i.vpos.x >= _MinX);
					c.a *= (i.vpos.x <= _MaxX);
					c.a *= (i.vpos.y >= _MinY);
					c.a *= (i.vpos.y <= _MaxY);
					c.rgb *= c.a;

					return 2.0f * i.color * _TintColor * c;
				}
				ENDCG 
			}
		}
		
		// ---- Dual texture cards
		SubShader 
		{
			Pass 
			{
				SetTexture [_MainTex] 
				{
					constantColor [_TintColor]
					combine constant * primary
				}
				SetTexture [_MainTex] 
				{
					combine texture * previous DOUBLE
				}
			}
		}
	
		// ---- Single texture cards (does not do color tint)
		SubShader 
		{
			Pass 
			{
				SetTexture [_MainTex] 
				{
					combine texture * primary
				}
			}
		}	
	}
}