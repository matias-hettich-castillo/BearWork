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
#region Font size 4
	// Set up font_size_4 font
	var font_sprite, map_string, proportional, separation, font_size_4

	font_sprite = spr_font_bearwork_4
	map_string = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz0123456789@¡!¿?\'\"#$%&()*-_+.,/\\<>=[]|:; "
	proportional = true
	separation = 1

	font_size_4 = font_add_sprite_ext(font_sprite, map_string, proportional, separation)
#endregion

#region Font size 8
	// Set up font_size_8 font
	var font_sprite, map_string, proportional, separation, font_size_8

	font_sprite = spr_font_bearwork_8
	map_string = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz0123456789@¡!¿?\'\"#$%&()*-_+.,/\\<>=[]|:; "
	proportional = true
	separation = 1

	font_size_8 = font_add_sprite_ext(font_sprite, map_string, proportional, separation)
#endregion

#region Font size 16
	// Set up font_size_16 font
	var font_sprite, map_string, proportional, separation, font_size_16

	font_sprite = spr_font_bearwork_16
	map_string = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz0123456789@¡!¿?\'\"#$%&()*-_+.,/\\<>=[]|:; "
	proportional = true
	separation = 1

	font_size_16 = font_add_sprite_ext(font_sprite, map_string, proportional, separation)
#endregion

#region Font size 24
	// Set up font_size_24 font
	var font_sprite, map_string, proportional, separation, font_size_24

	font_sprite = spr_font_bearwork_24
	map_string = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz0123456789@¡!¿?\'\"#$%&()*-_+.,/\\<>=[]|:; "
	proportional = true
	separation = 1

	font_size_24 = font_add_sprite_ext(font_sprite, map_string, proportional, separation)
#endregion

// Set up the fonts here. Use macros for easer access to different fonts
#region Font Macro
	// Set up default font
	small_font = font_size_4
	normal_font = font_size_8
	big_font = font_size_16
	title_font = font_size_24
	
	// Set font macro
	#macro SMALL_FONT obj_font_builder.small_font
	#macro NORMAL_FONT obj_font_builder.normal_font
	#macro BIG_FONT obj_font_builder.big_font
	#macro TITLE_FONT obj_font_builder.title_font
#endregion