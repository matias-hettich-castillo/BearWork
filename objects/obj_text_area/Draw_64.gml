///@description Do not touch this
// Draw text area background
draw_sprite_ext(border.background, border.back_subimage, border.x, border.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

#region Surface Clip
	// create a surface if it doesn't exist
	if (!surface_exists(clip_surface.surface)) {
	    clip_surface.surface = surface_create(clip_surface.width, clip_surface.height)
	}

	// clear and start drawing to surface
	surface_set_target(clip_surface.surface)
	draw_clear_alpha(clip_surface.color, clip_surface.alpha)

	// draw things here, subtracting (clip_x, clip_y) from coordinates:

	// Draw formatted_text
	draw_set_font(DEFAULT_FONT)
	switch (text_align)
	{
		case TEXTALIGNS.LEFT:
			draw_set_halign(fa_left)
			break
		case TEXTALIGNS.CENTER:
			draw_set_halign(fa_center)
			break
		case TEXTALIGNS.RIGHT:
			draw_set_halign(fa_right)
			break
		default:
			draw_set_halign(fa_left)
			break
	}
	draw_set_valign(fa_top)
	draw_set_color(text_color)
	draw_text(text_x, text_y, formatted_text)
	
	// finish and draw the surface itself:
	surface_reset_target();
	draw_surface(clip_surface.surface, clip_surface.x, clip_surface.y)
#endregion

// Draw text area border sprite
draw_sprite_ext(border.image, border.subimage, border.x, border.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)