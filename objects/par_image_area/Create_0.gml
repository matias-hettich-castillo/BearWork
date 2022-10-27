///@description Inherit this event
// Parent object for in game image areas.
// To use this first create a new object, then select this object in the "Parent" menu
// Then right click on the "Create" event of the new object and then click on the
// "Inherit Event" option. After that, you can tweak all the options below from the
// new object to your liking.

#region Image area functions
	// Sets the image area image
	function set_image(_value)
	{
		image = _value
	}
	
	// Set the image to fill the image area vertically
	function set_fit_vertical()
	{
		image_fit = IMAGEFIT.VERTICAL
	}
	
	// Set the image to fill the image area horizontally
	function set_fit_horizontal()
	{
		image_fit = IMAGEFIT.HORIZONTAL
	}
	
	// Function that updates the image to fit vertically
	function fit_vertical()
	{
		if (image != noone) { image_scale = sprite_height / sprite_get_height(image) }
		else { image_scale = 1 }
	}
	
	// Function that updates the image to fit horizontally
	function fit_horizontal()
	{
		if (image != noone) { image_scale = sprite_width / sprite_get_width(image) }
		else { image_scale = 1 }
	}
	
	//
	function set_show_border(_value)
	{
		show_border = _value
	}
#endregion

#region Variables, Functions and Structs (Do not touch)
	enum IMAGEFIT
	{
		VERTICAL,
		HORIZONTAL
	}
	
	// Function that updates the image values (width, position, surface clip, etc)
	// Must be called every draw event to update the image area values.
	function update()
	{
		// Update the subimage
		if (image != noone) {subimage++}
		
		// Update the text area alignment
		switch (image_fit)
		{
			case IMAGEFIT.HORIZONTAL:
				fit_horizontal()
				break
			case IMAGEFIT.VERTICAL:
				fit_vertical()
				break
		}

		// Update the surface clip position an size
		clip_surface.x = x
		clip_surface.y = y
		clip_surface.width = sprite_width
		clip_surface.height = sprite_height
	}

	// Other variables used to render the image area
	image = noone						// Image to render inside image area
	subimage = 0						// Subimage to render
	image_x = 0							// X position inside the surface clip
	image_y = 0							// Y position inside the surface clip
	image_fit = IMAGEFIT.HORIZONTAL		// The image fit inside the image area
	show_border = true					// Shows or hides the image area border

	// Clip surface. Used to clip the image inside the image area (Do not touch)
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