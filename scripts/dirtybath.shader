textures/dirtybath/dirtyfog
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 100
	fogparms ( .55 .11 .1 ) 3000

	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc gl_dst_color gl_zero
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc gl_dst_color gl_zero
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}

}


textures/dirtybath/dirtybathsky
{
	surfaceparm noimpact
	surfaceparm nolightmap

	q3map_sun	1 1 0.9 140 220 55
	q3map_surfacelight 120

	qer_editorimage textures/skies/inteldimredclouds.tga

	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendFunc GL_ONE GL_ONE
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}


textures/dirtybath/lavahellflat_2000
{
	
	qer_editorimage textures/liquids/lavahell.tga
	q3map_globaltexture
	surfaceparm trans
	surfaceparm noimpact
	surfaceparm lava
	surfaceparm nolightmap
	q3map_surfacelight 2000
	cull disable
	
	tesssize 128
	cull disable
	
	{
		map textures/liquids/lavahell.tga
		tcMod turb 0 .2 0 .1
	}
	
}