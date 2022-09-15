// Saves all the data of the game
function save_game()
{
	// Make save array
	var _save_data = array_create(0)
	
	// For every instance, create a struct and add it to the array
	with(obj_save_this)
	{
		// Save obj_player data
		var _save_entity = 
		{
			obj : object_get_name(object_index),
			player_score : player_score
		}
		
		array_push(_save_data, _save_entity)
	}
	
	// Turn all this data into a JSON string and save it via a buffer
	var _string = json_stringify(_save_data)
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1)
	buffer_write(_buffer, buffer_string, _string)
	buffer_save(_buffer, "savegame.save")
	buffer_delete(_buffer)
	
	show_debug_message("Game Saved " + _string)
}

// Loads all the data of the game
function load_game()
{
	if (file_exists("savegame.save"))
	{	
		var _buffer = buffer_load("savegame.save")
		var _string = buffer_read(_buffer, buffer_string)
		buffer_delete(_buffer)
		
		var _load_data = json_parse(_string)
		
		while(array_length(_load_data) > 0)
		{
			var _load_entity = array_pop(_load_data)
			if (_load_entity.obj == "obj_player")
			{
				// Load obj_player data
				obj_player.set_score(_load_entity.player_score)
			}
		}
		
		show_debug_message("Game Loaded " + _string)
	}
}