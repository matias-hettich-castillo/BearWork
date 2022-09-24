///@description Do not touch this
if (scrollable)
{
	// Scroll text up
	y += scroll_step

	// Bottom scroll limit
	if (y > scroll_bottom)
		y = scroll_bottom
	
	// Play sound
	obj_music_player.play_sfx(text_area_sounds.scroll_up)
}