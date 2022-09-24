///@description Inherit this event
// Parent object for in game text areas.
// To use this first create a new object, then select this object in the "Parent" menu
// Then right click on the "Create" event of the new object and then click on the
// "Inherit Event" option. After that, you can tweak all the options below from the
// new object to your liking.

// Text variables
text = ""				// Text area text
text_color = c_white	// Text area text color
text_halign = fa_left	// Text area horizontal align
text_valign = fa_top	// Text area vertical align
text_height = 0			// Used to determine height of text inside text area
text_width = 0			// Used to determine width of text inside text area

// Scroll variables
scrollable = false
scroll_step = 8			// Scroll step size
scroll_top = 0			// Used to determine the top level of the scroll text
scroll_bottom = 0		// Used to determine the bottom level of the scroll text

// Updates the text area to be scrollable or not
function set_scrollable(_value)
{
	scrollable = _value
}

// Text area sounds, make noone in case you want to disable sounds
text_area_sounds = {
	scroll_up: snd_scroll,
	scroll_down: snd_scroll
}

// Text area border variables, use this to set different border themes
border = {
	image: sprite_index,					// Border sprite
	subimage: 0,							// Sprite subimage n° (Can be used for animations)
	background: spr_text_area_background,	// Border background sprite
	back_subimage: 0,						// Background subimage n° (Can be used for animations)
	x: x,									// Border x position (Used for scrolling)
	y: y									// Border y position (Used for scrolling)
}

// Function that updates the text values (width, position, etc)
// Must be used every time the text inside the text area changes to update its values
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

// Clip surface. Used to clip the text inside the text area (Do not touch)
clip_surface = {
	surface: noone,
	color: c_black,
	alpha: 0,
	x: 0,
	y: 0,
	width: 0,
	height: 0
}