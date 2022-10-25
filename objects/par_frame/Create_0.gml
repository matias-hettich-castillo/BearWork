///@description Inherit this event
// Parent object for in game frames.
// To use this first create a new object, then select this object in the "Parent" menu
// Then right click on the "Create" event of the new object and then click on the
// "Inherit Event" option. After that, you can tweak all the options below from the
// new object to your liking.

// Set frame title title
title = "Title"

// Set frame title default title color
text_color = c_white

// Set the title default align and border space
border_space = 5
title_x = x + sprite_width / 2
title_y = y + border_space
title_align = TEXTALIGNS.CENTER
draw_set_halign(fa_middle)
draw_set_valign(fa_top)

// Array of elements that the frame has asociated with
elements = array_create(0)

// Function to add frame elements
function add_element(_element)
{
	array_push(elements, _element)
}

// Set the title border space
function set_border_space(_value)
{
	border_space = _value
}

// Functions to set the title to left alignment
function set_left_align()
{
	title_align = TEXTALIGNS.LEFT
}

// Functions to set the title to center alignment
function set_center_align()
{
	title_align = TEXTALIGNS.CENTER
}

// Functions to set the title to right alignment
function set_right_align()
{
	title_align = TEXTALIGNS.RIGHT
}

// Set the title to left align
function align_left()
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	title_x = x + border_space
	title_y = y + border_space
}
	
// Set the title to center align
function align_center()
{
	draw_set_halign(fa_middle)
	draw_set_valign(fa_top)
	title_x = x + sprite_width / 2
	title_y = y + border_space
}
	
// Set the title to right align
function align_right()
{
	draw_set_halign(fa_right)
	draw_set_valign(fa_top)
	title_x = x + sprite_width - border_space
	title_y = y + border_space
}

// Function that updates the title alignment, font and color of the frame
function update()
{
	draw_set_font(NORMAL_FONT)
	draw_set_color(text_color)
	switch (title_align)
	{
		case TEXTALIGNS.LEFT:
			align_left()
			break
		case TEXTALIGNS.CENTER:
			align_center()
			break
		case TEXTALIGNS.RIGHT:
			align_right()
			break
	}
}

// Sets the frame and its elements visibility, use this to show/hide the frame and elements
function set_visible(_value)
{	
	// Set frame visibility
	visible = _value
	
	// Set buttons_visibility
	for (var i=0; i<array_length(elements); i++)
	{
		elements[i].visible = _value
	}
}