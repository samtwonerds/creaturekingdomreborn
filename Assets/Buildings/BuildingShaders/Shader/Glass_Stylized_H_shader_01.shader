// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34135,y:32705,varname:node_3138,prsc:2|emission-1988-OUT,alpha-9902-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1270,x:32024,y:33173,varname:node_1270,prsc:2,sctp:1;n:type:ShaderForge.SFN_Tex2d,id:7412,x:32228,y:33173,ptovrint:False,ptlb:Shine_texture,ptin:_Shine_texture,varname:_Texture_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1270-UVOUT;n:type:ShaderForge.SFN_Blend,id:8211,x:32778,y:33047,varname:node_8211,prsc:2,blmd:13,clmp:True|SRC-8272-RGB,DST-4316-OUT;n:type:ShaderForge.SFN_Color,id:8272,x:32228,y:33017,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_8272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Fresnel,id:3120,x:32461,y:33328,varname:node_3120,prsc:2|EXP-8970-OUT;n:type:ShaderForge.SFN_Slider,id:8970,x:32071,y:33348,ptovrint:False,ptlb:Fresnel Exponent Start,ptin:_FresnelExponentStart,varname:node_8970,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.6,max:2;n:type:ShaderForge.SFN_Vector1,id:3017,x:32527,y:33642,varname:node_3017,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Slider,id:4969,x:32071,y:33451,ptovrint:False,ptlb:Fresnel Exponent Destination,ptin:_FresnelExponentDestination,varname:_FresnelExponent_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:1.084986,max:2;n:type:ShaderForge.SFN_Fresnel,id:6989,x:32461,y:33449,varname:node_6989,prsc:2|EXP-4969-OUT;n:type:ShaderForge.SFN_Blend,id:4316,x:32791,y:33331,varname:node_4316,prsc:2,blmd:10,clmp:True|SRC-3120-OUT,DST-6989-OUT;n:type:ShaderForge.SFN_Blend,id:3571,x:32778,y:32889,varname:node_3571,prsc:2,blmd:10,clmp:True|SRC-3732-OUT,DST-6989-OUT;n:type:ShaderForge.SFN_Vector3,id:3732,x:32450,y:32892,varname:node_3732,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Blend,id:8285,x:33184,y:32796,varname:node_8285,prsc:2,blmd:6,clmp:True|SRC-3571-OUT,DST-8211-OUT;n:type:ShaderForge.SFN_Tex2d,id:7600,x:32791,y:33524,ptovrint:False,ptlb:Surface,ptin:_Surface,varname:node_7600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Blend,id:9087,x:33069,y:33352,varname:node_9087,prsc:2,blmd:16,clmp:True|SRC-4316-OUT,DST-7600-R;n:type:ShaderForge.SFN_Blend,id:9718,x:33168,y:33162,varname:node_9718,prsc:2,blmd:20,clmp:True|SRC-7412-R,DST-9087-OUT;n:type:ShaderForge.SFN_Blend,id:3723,x:33432,y:33150,varname:node_3723,prsc:2,blmd:10,clmp:True|SRC-9718-OUT,DST-6808-OUT;n:type:ShaderForge.SFN_Slider,id:6808,x:33208,y:33396,ptovrint:False,ptlb:Crystal Clearness,ptin:_CrystalClearness,varname:node_6808,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.5,cur:0.5,max:0.8;n:type:ShaderForge.SFN_Blend,id:5095,x:33168,y:33008,varname:node_5095,prsc:2,blmd:16,clmp:True|SRC-7600-R,DST-7412-R;n:type:ShaderForge.SFN_Blend,id:9902,x:33749,y:32990,varname:node_9902,prsc:2,blmd:6,clmp:True|SRC-9496-OUT,DST-3723-OUT;n:type:ShaderForge.SFN_Blend,id:1988,x:33522,y:32841,varname:node_1988,prsc:2,blmd:6,clmp:True|SRC-8285-OUT,DST-5095-OUT;n:type:ShaderForge.SFN_Multiply,id:9496,x:33460,y:33001,varname:node_9496,prsc:2|A-5095-OUT,B-9451-OUT;n:type:ShaderForge.SFN_Slider,id:9451,x:33208,y:33489,ptovrint:False,ptlb:Shine Opacity,ptin:_ShineOpacity,varname:_CrystalClearness_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;proporder:7412-7600-8272-8970-4969-6808-9451;pass:END;sub:END;*/

Shader "UnlitGlass/Glass_Stylized_WithHighlight_01" {
    Properties {
        _Shine_texture ("Shine_texture", 2D) = "white" {}
        _Surface ("Surface", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _FresnelExponentStart ("Fresnel Exponent Start", Range(0.6, 2)) = 0.6
        _FresnelExponentDestination ("Fresnel Exponent Destination", Range(0.6, 2)) = 1.084986
        _CrystalClearness ("Crystal Clearness", Range(0.5, 0.8)) = 0.5
        _ShineOpacity ("Shine Opacity", Range(0, 1)) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Shine_texture; uniform float4 _Shine_texture_ST;
            uniform float4 _Color;
            uniform float _FresnelExponentStart;
            uniform float _FresnelExponentDestination;
            uniform sampler2D _Surface; uniform float4 _Surface_ST;
            uniform float _CrystalClearness;
            uniform float _ShineOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float node_6989 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExponentDestination);
                float node_4316 = saturate(( node_6989 > 0.5 ? (1.0-(1.0-2.0*(node_6989-0.5))*(1.0-pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExponentStart))) : (2.0*node_6989*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExponentStart)) ));
                float4 _Surface_var = tex2D(_Surface,TRANSFORM_TEX(i.uv0, _Surface));
                float4 _Shine_texture_var = tex2D(_Shine_texture,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _Shine_texture));
                float node_5095 = saturate(round( 0.5*(_Surface_var.r + _Shine_texture_var.r)));
                float3 emissive = saturate((1.0-(1.0-saturate((1.0-(1.0-saturate(( node_6989 > 0.5 ? (1.0-(1.0-2.0*(node_6989-0.5))*(1.0-float3(0,0,0))) : (2.0*node_6989*float3(0,0,0)) )))*(1.0-saturate(( _Color.rgb > 0.5 ? (node_4316/((1.0-_Color.rgb)*2.0)) : (1.0-(((1.0-node_4316)*0.5)/_Color.rgb))))))))*(1.0-node_5095)));
                float3 finalColor = emissive;
                return fixed4(finalColor,saturate((1.0-(1.0-(node_5095*_ShineOpacity))*(1.0-saturate(( _CrystalClearness > 0.5 ? (1.0-(1.0-2.0*(_CrystalClearness-0.5))*(1.0-saturate((saturate(round( 0.5*(node_4316 + _Surface_var.r)))/_Shine_texture_var.r)))) : (2.0*_CrystalClearness*saturate((saturate(round( 0.5*(node_4316 + _Surface_var.r)))/_Shine_texture_var.r))) ))))));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
