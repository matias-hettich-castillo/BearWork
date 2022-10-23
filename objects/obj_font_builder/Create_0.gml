///@description Add fonts here
// Object that manages the game fonts. Used in the beggining of the game to set up
// the different fonts that are going to be used ingame.

// Define text alignment here
#region Text alignment
	enum TEXTALIGNS
	{
		LEFT,
		RIGHT,
		CENTER
	}
#endregion

// Define the fonts here
#region Font size 8
	// Set up font_size_8 font
	var font_sprite, map_string, proportional, separation, font_size_8

	font_sprite = spr_font_bearwork_8
	map_string = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz0123456789@¡!¿?\'\"#$%&()*-_+.,/\\<>=[]|:; "
	proportional = true
	separation = 1

	font_size_8 = font_add_sprite_ext(font_sprite, map_string, proportional, separation)
#endregion

// Set up the fonts here. Use macros for easer access to different fonts
#region Font Macro
	// Set up default font
	font = font_size_8
	
	// Set font macro
	#macro DEFAULT_FONT obj_font_builder.font
#endregion