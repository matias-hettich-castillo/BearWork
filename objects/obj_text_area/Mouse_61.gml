///@description Do not touch this
if (scrollable)
{
	// Top scroll limit
	if (y > scroll_top)
	{
		y -= scroll_step
	
		// Play sound
		obj_music_player.play_sfx(text_area_sounds.scroll_down)
	}
}