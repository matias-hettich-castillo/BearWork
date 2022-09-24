///@description Do not touch this
if (scrollable)
{
	// Scroll text down
	y -= scroll_step

	// Top scroll limit
	if (y < scroll_top)
		y = scroll_top
	
	// Play sound
	obj_music_player.play_sfx(text_area_sounds.scroll_down)
}