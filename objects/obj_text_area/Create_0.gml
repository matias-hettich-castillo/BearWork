// Set default variables
text = ""
text_color = c_white
text_halign = fa_left
text_valign = fa_top
text_height = 0
text_width = 0

// Scroll variables
scroll_step = 8
scroll_top = 0
scroll_bottom = 0

// Text area border variables
border = {
	subimage: 0,
	x: x,
	y: y
}

// Clip surface
clip_surface = {
	surface: noone,
	color: c_black,
	alpha: 0,
	x: 0,
	y: 0,
	width: 0,
	height: 0
}

function text_area_build()
{
	border_fix = 3
	text_height = string_height(text)
	text_width = string_width(text)

	scroll_top = y - (text_height - sprite_height)
	scroll_bottom = y

	clip_surface.x = x+border_fix
	clip_surface.y = y+border_fix
	clip_surface.width = sprite_width-border_fix*2
	clip_surface.height = sprite_height-border_fix*2
}