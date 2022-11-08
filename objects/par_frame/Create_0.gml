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

// This function centers the frame in the camera view.
// The final position can be tweaked adding or substracting to the center position
// with the dx and dy values.
// If the frame has elements it also repositions them to the new position.
// It must be called at the end of the create event of the children frames,
// if not, the frame will render in the position that was defined in the room editor.
// In case this is what is needed, just leave it without the call to this function
function set_frame_position(dx = 0, dy = 0)
{
	// Get the elements relative position to the frame
	var num_elements = array_length(elements)
	var element_relative_x = array_create(0)
	var element_relative_y = array_create(0)
	
	for (var i = 0; i < num_elements; i++)
	{
		array_push(element_relative_x, elements[i].x - x)
		array_push(element_relative_y, elements[i].y - y)
	}
	
	// Position the frame according to the gui width and height
	x = camera_get_view_x(view_camera[0]) +
		(camera_get_view_width(view_camera[0]) / 2) -
		(sprite_width / 2) + dx
	y = camera_get_view_y(view_camera[0]) +
		(camera_get_view_height(view_camera[0]) / 2) -
		(sprite_height / 2) + dy
	
	// Reposition the elements
	for (var i = 0; i < num_elements; i++)
	{
		elements[i].x = x + element_relative_x[i]
		elements[i].y = y + element_relative_y[i]
	}
}