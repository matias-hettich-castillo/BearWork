// Here are the functions that handle save/load of game data.
// Player data is stored in a file called savegame.save
// Game options menu data is stored in a file caled saveoptions.save

// Handles all the data saving of the game
// Whenever the game needs to save a new variable, it must be added down here.
// Then it must be added into the load function as well for it to be properly loaded.
function save_game(_options = false)
{
	var _save_data = array_create(0)		// Save array
	
	// To save player data include it here
	if (!_options)
	{
		with(obj_player)
		{
			// Save obj_player data
			var _save_entity = 
			{
				obj : object_get_name(object_index),	// obj_player identifier (used for loading)
				player_score : player_score				// In game score data
			}
		
			array_push(_save_data, _save_entity)		// Push the data into the save array
		}
	}
	
	// To save options data include it here
	else
	{
		with (obj_music_player)
		{
			// Save obj_music_player data
			var _save_entity = 
			{
				obj : object_get_name(object_index),	// obj_music_player id (used for loading)
				master_volume : get_master_volume(),	// Master volume control value
				music_volume : get_music_volume(),		// Music volume control value
				sfx_volume : get_sfx_volume()			// SFX volume control value
			}
		
			array_push(_save_data, _save_entity)		// Push the data into the save array
		}
	}
	
	// Create JSON string
	var _string = json_stringify(_save_data)
	
	// Create writer buffer
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1)
	
	// Write JSON string into buffer
	buffer_write(_buffer, buffer_string, _string)
	
	// Set savegame or saveoptions file name
	var _save_file
	if (!_options) _save_file = "savegame.save"		// In case is player data
	else _save_file = "saveoptions.save"			// In case is options data
	
	// Save buffer into memory
	buffer_save(_buffer, _save_file)
	
	// Delete buffer
	buffer_delete(_buffer)
	
	// Show a console message when ready
	show_debug_message("Game Saved " + _string)
}

// Handles all the data loading of the game
// Whenever the game needs to load a new variable added above, it must be added down here too.
function load_game(_options = false)
{
	// Set the buffer reader for player/options data
	var _buffer = noone
	if (!_options and file_exists("savegame.save")) _buffer = buffer_load("savegame.save")
	if (_options and file_exists("saveoptions.save")) _buffer = buffer_load("saveoptions.save")
	
	// Continue with loading the data
	if (_buffer != noone)
	{
		// Read the buffer
		var _string = buffer_read(_buffer, buffer_string)
		
		// Delete the buffer after
		buffer_delete(_buffer)
		
		// Convert the JSON data into an array of data
		var _load_data = json_parse(_string)
		
		// Read the array of data to load the information from it
		while(array_length(_load_data) > 0)
		{
			// Take every element of the data array
			var _load_entity = array_pop(_load_data)
			
			// In case of loading player data
			if (_load_entity.obj == "obj_player" and !_options)
			{
				// Add here every variable that needs to be loaded
				
				// Load obj_player data
				obj_player.set_score(_load_entity.player_score)
			}
			
			// In case of loading options data
			if (_load_entity.obj == "obj_music_player" and _options)
			{
				// Add here every variable that needs to be loaded
				
				// Load obj_music_player volume data
				obj_music_player.set_master_volume(_load_entity.master_volume)
				obj_music_player.set_music_volume(_load_entity.music_volume)
				obj_music_player.set_sfx_volume(_load_entity.sfx_volume)
				
				// Update the game volume data
				obj_music_player.update_gain()
			}
		}
		
		// Show a console message when ready
		show_debug_message("Game Loaded " + _string)
	}
}