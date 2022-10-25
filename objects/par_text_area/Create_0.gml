///@description Inherit this event
// Parent object for in game text areas.
// To use this first create a new object, then select this object in the "Parent" menu
// Then right click on the "Create" event of the new object and then click on the
// "Inherit Event" option. After that, you can tweak all the options below from the
// new object to your liking.

#region Text area functions
	// Sets the text area text
	function set_text(_value)
	{
		text = _value
	}
	
	// Appends a new text to the text area text
	function add_text(_value)
	{
		text += string(_value)
	}
	
	// Clears the text area text
	function clear_text()
	{
		text = ""
	}
	
	// Set the text area border space
	function set_text_border_space(_value)
	{
		border_space = _value
	}
	
	// Set the text area color
	function set_text_color(_value)
	{
		text_color = _value
	}
	
	// Set the text area to left align
	function set_left_align()
	{
		text_align = TEXTALIGNS.LEFT
	}
	
	// Set the text area to center align
	function set_center_align()
	{
		text_align = TEXTALIGNS.CENTER
	}
	
	// Set the text area to right align
	function set_right_align()
	{
		text_align = TEXTALIGNS.RIGHT
	}
	
	// Functions that updates the text to left alignment
	function align_left()
	{
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		text_x = border_space
		text_y = border_space + scroll
	}
	
	// Functions that updates the text to center alignment
	function align_center()
	{
		draw_set_halign(fa_middle)
		draw_set_valign(fa_top)
		text_x = sprite_width / 2
		text_y = border_space + scroll
	}
	
	// Functions that updates the text to right alignment
	function align_right()
	{
		draw_set_halign(fa_right)
		draw_set_valign(fa_top)
		text_x = sprite_width - border_space
		text_y = border_space + scroll
	}
	
	// Set the text area font
	function set_font(_value)
	{
		text_font = _value
	}

	// Updates the text area to be scrollable or not
	function set_scrollable(_value)
	{
		scrollable = _value
	}
#endregion

#region Variables, Functions and Structs (Do not touch)
	// Function that updates the text values (width, position, surface clip, etc)
	// Must be called every step to update the text area values.
	function update()
	{
		// Set font and color of text
		draw_set_font(text_font)
		draw_set_color(text_color)
		
		// Update the text area alignment
		switch (text_align)
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
		
		// Update the text area width
		text_area_width = sprite_width - border_space * 3

		// Split the text into a words array
		var _words = string_split(text, " ")
		formatted_text = ""
		var _line = ""
		var i = 0
	
		// Loop in all the words one by one
		while (i < array_length(_words))
		{
			// Variable for storing the new line width
			var _new_line_width = 0
		
			// Append words to the new line until there are no more to add
			do
			{
				// Append the next word to the new line, remove blank spaces
				_line += " " + _words[i]
				_line = string_trim(_line)
				i++
			
				// Check if there are more words to append next loop, break if don't
				if (i >= array_length(_words)) break
			
				else
				{
					// Calculate next word width in pixels
					draw_set_font(text_font)
					_new_line_width = string_width(_line + " " + _words[i])
				}
			}
			until (_new_line_width > text_area_width)
		
			// Add the new line to the formatted text for rendering later, empty the new line
			formatted_text += _line + "\n"
			_line = ""
		}
	
		// Update text area height with formatted text
		text_area_height = string_height(formatted_text)
	
		// Update the scroll top and bottom variables
		scroll_top = sprite_height - (text_area_height + 2 * border_space)
		scroll_bottom = 0

		// Update the surface clip position an size
		clip_surface.x = x
		clip_surface.y = y
		clip_surface.width = sprite_width
		clip_surface.height = sprite_height
	}

	// Other variables used to render the text area
	text = ""						// The raw text to show in the text area
	border_space = 8				// Space between the text and the text area border
	text_color = c_white			// Text area text color
	text_font = NORMAL_FONT			// Text area font
	text_align = TEXTALIGNS.LEFT	// The text alignment inside the text area
	formatted_text = ""									// The formatted text to be renderized
	text_x = border_space								// X position inside the surface clip
	text_y = border_space								// Y position inside the surface clip
	text_area_height = 0								// Used for scrolling the text
	text_area_width = sprite_width - border_space * 3	// The width of the surface clip

	// Variables used for the scroll of the text area
	scrollable = false	// Sets if the text area can be scrollable or not
	scroll = 0			// The amount of scroll of the text area
	scroll_step = 8		// Scroll step size
	scroll_top = 0		// Used to determine the top level of the scroll text
	scroll_bottom = 0	// Used to determine the bottom level of the scroll text

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

	// Clip surface. Used to clip the text inside the text area (Do not touch)
	clip_surface = {
		surface: noone,
		color: c_black,
		alpha: 0,
		x: 0,
		y: 0,
		width: 5,
		height: 5
	}
#endregion