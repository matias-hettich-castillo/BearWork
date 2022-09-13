// Saves all the data of the game
function save_game()
{
	// Make save array
	var _save_data = array_create(0)
	
	// For every instance, create a struct and add it to the array
	with(obj_save_me)
	{
		var _save_entity = 
		{
			obj : object_get_name(object_index),
			y : y,
			x : x,
			image_index : image_index,
			image_blend : image_blend,
			persistent : persistent,
			win_score : win_score,
			lose_score : lose_score
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
	
	// Upload player score if challenge is active	
	if (gxc_get_query_param("challenge") == global.ch_top_players)
	{
	    gxc_challenge_submit_score(obj_player.win_score, function (_status, _result)
	    {
	        if (_status == 200)
	        {
				// Show retry button if the score was uploaded correctly
	            with(obj_button_retry) visible = true
	        }
	    })
	}
	
	else
	{
		// Show retry button if challenge is not active
		with(obj_button_retry) visible = true
	}
}

// Loads all the data of the game
function load_game()
{
	if (file_exists("savegame.save"))
	{
		// Erase current game state
		with(obj_save_me) instance_destroy()
	
		var _buffer = buffer_load("savegame.save")
		var _string = buffer_read(_buffer, buffer_string)
		buffer_delete(_buffer)
		
		var _load_data = json_parse(_string)
		
		while(array_length(_load_data) > 0)
		{
			var _load_entity = array_pop(_load_data)
			with (instance_create_layer(0, 0, layer, asset_get_index(_load_entity.obj)))
			{
				x = _load_entity.x
				y = _load_entity.y
				image_blend = _load_entity.image_blend
				image_index = _load_entity.image_index
				win_score = _load_entity.win_score
				lose_score = _load_entity.lose_score
				persistent = _load_entity.persistent
			}
		}
		
		show_debug_message("Game Loaded " + _string)
	}
}