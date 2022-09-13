if (room == rm_title_screen)
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(DEFAULT_FONT)
	draw_set_color(background_text_color)
	
	x_offset = (string_width("B")*2)+4
	y_offset = 2
	x_offset_reset = x_offset
	for (var i=1; i<=array_length(background_text); i++)
	{
		draw_set_alpha(background_text_alpha[i-1])
		draw_text(x+x_offset, y+y_offset, background_text[i-1])
		x_offset += string_width("AAAAA ")
		if (i%3==0)
		{
			y_offset += string_height("A")
			x_offset = x_offset_reset
		}
	}
}