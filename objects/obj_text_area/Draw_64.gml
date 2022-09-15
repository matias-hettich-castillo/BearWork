// Draw text area background
draw_sprite_ext(spr_text_area_background, 0, border.x, border.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

// create a surface if it doesn't exist
if (!surface_exists(clip_surface.surface)) {
    clip_surface.surface = surface_create(clip_surface.width, clip_surface.height);
}

// clear and start drawing to surface
surface_set_target(clip_surface.surface);
draw_clear_alpha(clip_surface.color, clip_surface.alpha);

// draw things here, subtracting (clip_x, clip_y) from coordinates:

// Draw text area
draw_set_font(DEFAULT_FONT);
draw_set_halign(text_halign);
draw_set_valign(text_valign);
draw_set_color(text_color);
draw_text(x + sprite_width/2 - clip_surface.x, y - clip_surface.y, text)

// finish and draw the surface itself:
surface_reset_target();
draw_surface(clip_surface.surface, clip_surface.x, clip_surface.y);

// Draw text area border sprite
draw_sprite_ext(sprite_index, border.subimage, border.x, border.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)