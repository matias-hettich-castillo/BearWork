/////@description Do not touch this
if (scrollable)
{
	// Bottom scroll limit
	if (scroll < scroll_bottom)
	{
		scroll += scroll_step
		// Play sound
		obj_music_player.play_sfx(text_area_sounds.scroll_up)
	}
}