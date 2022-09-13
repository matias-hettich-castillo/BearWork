// Draw button sprite
draw_self()

// Draw scroll bar text
draw_set_font(DEFAULT_FONT)
draw_set_color(text_color)

// Draw text and thumb
if (orientation == orientations.horizontal)
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_text(x - 40, y + sprite_height/2, text)
	
	draw_sprite_ext(thumb.sprite, thumb.subimage, thumb.x-(thumb.x_scale*sprite_get_width(thumb.sprite)/2), thumb.y, thumb.x_scale, thumb.y_scale, 0, c_white, 1)
	//draw_sprite_stretched(thumb.sprite, thumb.subimage, thumb.x, thumb.y, )
	draw_text(x + sprite_width + 8, y + sprite_height/2, string(cur_value))
}

else
{
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_text(x + sprite_width/2, y - 16, string(cur_value))
	draw_sprite_ext(thumb.sprite, thumb.subimage, thumb.x, thumb.y-(thumb.y_scale*sprite_get_height(thumb.sprite)/2), thumb.x_scale, thumb.y_scale, 0, c_white, 1)
}