///@description Do not touch this
// Update image area variables
update()

#region Surface Clip
	// create a surface if it doesn't exist
	if (!surface_exists(clip_surface.surface)) {
	    clip_surface.surface = surface_create(clip_surface.width, clip_surface.height)
	}

	// clear and start drawing to surface
	surface_set_target(clip_surface.surface)
	draw_clear_alpha(clip_surface.color, clip_surface.alpha)

	// draw things here, subtracting (clip_x, clip_y) from coordinates:
	// Draw image
	if (image != noone)
	{
		draw_sprite_ext(image, subimage, image_x, image_y, image_scale, image_scale, image_angle, image_blend, image_alpha)
	}
	
	// finish and draw the surface itself:
	surface_reset_target();
	draw_surface(clip_surface.surface, clip_surface.x, clip_surface.y)
#endregion

// Draw image area border sprite
if (show_border) { draw_self() }