/// @description Insert description here
// You can write your code in this editor

y -= scroll_step

if (y < scroll_bottom)
{
	y = scroll_bottom
	audio_play_sound(snd_miss, 100, false)
}

else
{
	audio_play_sound(snd_type, 100, false)
}