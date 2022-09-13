#region Font size 8
	// Set up font_size_8 font
	var font_sprite, proportional, separation, map_string

	font_sprite = spr_font_bearwork_8
	map_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@¡!¿?\'\"#$%&()*-+.,/\\<>=[]|:; "
	proportional = true
	separation = 1

	font_size_8 = font_add_sprite_ext(font_sprite, map_string, proportional, separation)
#endregion

#region Font
	// Set up default font
	font = font_size_8
	
	// Set font macro
	#macro DEFAULT_FONT obj_font_builder.font
#endregion