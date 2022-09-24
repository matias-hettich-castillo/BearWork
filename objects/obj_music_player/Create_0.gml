///@description Add music here
// Object that manages the different sounds of the game, as the background music that is played.
// Also here is the volume system, and different music options, data and values.

// Master volume
max_volume = 10			// Top limit for volume
min_volume = 0			// Bottom limit for volume
volume_step = 1			// Step for volume to go up or down
master_volume = 8.0		// Master volume control
music_volume = 3.0		// Background music volume control
sfx_volume = 5.0		// Sound effects volume control

// Here goes the themes that are going to be played as background music ingame
#region Game Music
	// To set a song as background music use set_background_music(_music)
	// To play the background music use play_background_music()
	
	wordle_clone_main_theme = {
		theme: mus_wordle_clone_main_theme,
		name: "Wordle Clone\nMain Theme\n\nby Matias Hettich",
		priority: 100,
		loop: true
	}
#endregion

// Functions that are used to set different actions on the background music of the game
#region BGM and SFX Player
	// Game Background Music Player
	background_music = noone		// Current BGM track to be played
	background_music_theme = noone	// Theme to play from the BGM track
	background_music_priority = 0	// Priority of the theme to play as BGM
	background_music_loop = false	// Loop of the theme to play as BGM
	background_music_name = ""		// Name of the song from the BGM set
	background_music_status = ""	// Status of the BGM player (Playing, Paused, Stopped...)

	// Function that plays the SFX in game
	function play_sfx(_sound)
	{
		if (_sound != noone)
		{
			sfx = audio_play_sound(_sound, 50, false)
			update_gain(sfx)
		}
	}

	// Function that sets the BGM track to be played
	function set_background_music(_music)
	{
		background_music_theme = _music.theme
		background_music_priority = _music.priority
		background_music_loop = _music.loop
		background_music_name = _music.name
	}
	
	// Function that plays the current track as background music
	function play_background_music()
	{
		if (!audio_is_playing(background_music))
		{
			// Play BGM
			background_music = audio_play_sound(
				background_music_theme,
				background_music_priority,
				background_music_loop)
			update_gain()
			
			// Set the BGM player status
			background_music_status = "Playing"
		}
	}
	
	// Function that stops the background music
	function stop_background_music()
	{
		if (audio_is_playing(background_music))
		{
			// Stop BGM
			audio_stop_sound(background_music)
			update_gain()
			
			// Set the BGM player status
			background_music_status = "Stopped"
		}
	}
	
	// Function that pauses the background music
	function pause_background_music()
	{
		if (!audio_is_paused(background_music) and audio_is_playing(background_music))
		{
			// Pause BGM
			audio_pause_sound(background_music)
			update_gain()
			
			// Set the BGM player status
			background_music_status = "Paused"
		}
	}
	
	// Function that resumes the background music
	function resume_background_music()
	{
		if (audio_is_paused(background_music))
		{
			// Resume BGM
			audio_resume_sound(background_music)
			update_gain()
			
			// Set the BGM player status
			background_music_status = "Resume"
		}
	}
	
	// Function that returns the BGM name of the track
	function get_background_music_name()
	{
		return background_music_name
	}
	
	// Function that returns the status of the BGM player
	function get_background_music_status()
	{
		return background_music_status
	}
#endregion

// Functions for master, BGM and SFX volume control
#region Volume Control
	// Function that increases the master volume
	function master_volume_up()
	{
		master_volume += volume_step
		if (master_volume >= max_volume)
			master_volume = max_volume
		update_gain()
	}
	
	// Function that decreases the master volume
	function master_volume_down()
	{
		master_volume -= volume_step
		if (master_volume <= min_volume)
			master_volume = min_volume
		update_gain()
	}
	
	// Function that increases the background music volume
	function music_volume_up()
	{
		music_volume += volume_step
		if (music_volume >= max_volume)
			music_volume = max_volume
		update_gain()
	}
	
	// Function that decreases the background music volume
	function music_volume_down()
	{
		music_volume -= volume_step
		if (music_volume <= min_volume)
			music_volume = min_volume
		update_gain()
	}
	
	// Function that increases the sfx volume
	function sfx_volume_up()
	{
		sfx_volume += volume_step
		if (sfx_volume >= max_volume)
			sfx_volume = max_volume
	}
	
	// Function that increases the sfx volume
	function sfx_volume_down()
	{
		sfx_volume -= volume_step
		if (sfx_volume <= min_volume)
			sfx_volume = min_volume
	}
	
	// Function that sets the master volume to a specific value
	function set_master_volume(_value)
	{
		master_volume = _value
		if (master_volume > max_volume) master_volume = max_volume
		if (master_volume < min_volume) master_volume = min_volume
		update_gain()
	}
	
	// Function that gets the master volume value
	function get_master_volume()
	{
		return master_volume
	}
	
	// Function that sets the BGM volume to a specific value
	function set_music_volume(_value)
	{
		music_volume = _value
		if (music_volume > max_volume) music_volume = max_volume
		if (music_volume < min_volume) music_volume = min_volume
		update_gain()
	}
	
	// Function that gets the music volume value
	function get_music_volume()
	{
		return music_volume
	}
	
	// Function that sets the sfx volume to a specific value
	function set_sfx_volume(_value)
	{
		sfx_volume = _value
		if (sfx_volume > max_volume) sfx_volume = max_volume
		if (sfx_volume < min_volume) sfx_volume = min_volume
	}
	
	// Function that gets the sfx volume value
	function get_sfx_volume()
	{
		return sfx_volume
	}
	
	// Function that keeps the volume updated according to the corresponding control
	function update_gain(sfx = noone)
	{
		if (sfx != noone)
		{
			audio_sound_gain(sfx, sfx_volume/10, 0)
		}
		audio_sound_gain(background_music, music_volume/10, 0)
		audio_master_gain(master_volume/10)
	}
#endregion