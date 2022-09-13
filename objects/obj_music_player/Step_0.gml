// Set the main game volume
audio_master_gain(master_volume)

// Play the main theme on title and about screens
if (room == rm_title_screen || room == rm_about_screen)
{
	// Stop game music loop players
	if (audio_is_playing(drum_looper)) audio_stop_sound(drum_looper)
	if (audio_is_playing(bass_looper)) audio_stop_sound(bass_looper)
	if (audio_is_playing(synth_looper)) audio_stop_sound(synth_looper)
	if (audio_is_playing(melody_1_looper)) audio_stop_sound(melody_1_looper)
	if (audio_is_playing(melody_2_looper)) audio_stop_sound(melody_2_looper)
		
	// Play main theme loop
	if (!audio_is_playing(background_music))
	{
		background_music = audio_play_sound(main_theme.music, main_theme.priority, main_theme.loop)
	}
}

if (room == rm_game_screen)
{
	// Stop main theme loop
	if (audio_is_playing(background_music))
		audio_stop_sound(background_music)
	
	// Play game music loop players
	if (!audio_is_playing(drum_looper))
		drum_looper = audio_play_sound(drum_loop.music, drum_loop.priority, drum_loop.loop)
		
	if (!audio_is_playing(bass_looper))
		bass_looper = audio_play_sound(bass_loop.music, bass_loop.priority, bass_loop.loop)
		
	if (!audio_is_playing(synth_looper))
		synth_looper = audio_play_sound(synth_loop.music, synth_loop.priority, synth_loop.loop)
		
	if (!audio_is_playing(melody_1_looper))
		melody_1_looper = audio_play_sound(melody_1_loop.music, melody_1_loop.priority, melody_1_loop.loop)
		
	if (!audio_is_playing(melody_2_looper))
		melody_2_looper = audio_play_sound(melody_2_loop.music, melody_2_loop.priority, melody_2_loop.loop)
	
	audio_sound_gain(drum_looper, 0, 0)
	audio_sound_gain(bass_looper, 0, 0)
	audio_sound_gain(synth_looper, 0, 0)
	audio_sound_gain(melody_1_looper, 0, 0)
	audio_sound_gain(melody_2_looper, 0, 0)
	
	try
	{
		if (obj_game.game_state == game_states.play)
			switch (obj_game.player_turn)
			{
				case 1:
					audio_sound_gain(drum_looper, master_volume, 0)
					break
		
				case 2:
					audio_sound_gain(drum_looper, master_volume, 0)
					audio_sound_gain(bass_looper, master_volume, 0)
					break
		
				case 3:
					audio_sound_gain(drum_looper, master_volume, 0)
					audio_sound_gain(bass_looper, master_volume, 0)
					audio_sound_gain(synth_looper, master_volume, 0)
					break
			
				case 4:
					audio_sound_gain(drum_looper, master_volume, 0)
					audio_sound_gain(bass_looper, master_volume, 0)
					audio_sound_gain(synth_looper, master_volume, 0)
					audio_sound_gain(melody_1_looper, master_volume, 0)
					break
			
				case 5:
					audio_sound_gain(drum_looper, master_volume, 0)
					audio_sound_gain(bass_looper, master_volume, 0)
					audio_sound_gain(synth_looper, master_volume, 0)
					audio_sound_gain(melody_1_looper, master_volume, 0)
					audio_sound_gain(melody_2_looper, master_volume, 0)
					break
			}
			
		else
		{
			audio_sound_gain(drum_looper, master_volume, 0)
			audio_sound_gain(bass_looper, master_volume, 0)
			audio_sound_gain(synth_looper, master_volume, 0)
			audio_sound_gain(melody_1_looper, master_volume, 0)
			audio_sound_gain(melody_2_looper, master_volume, 0)
		}
	}
	
	catch (_exception)
	{
		
	}
}