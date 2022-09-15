enum button_actions {
	transition,
	new_game,
	continue_game,
	retry_game,
	quit_game,
	next_level,
	unpause,
	pause,
	win,
	lose
}

// Define different on_click actions to execute on objects
function on_click(action = undefined)
{
	// If action is defined
	if (action != undefined)
	{
		// Action type is transition
		if (action._type == button_actions.transition)
		{	
			// Execute transition
			transition_start(action._room_target, action._type_out, action._type_in)
		}
		
		// Action type is new_game
		if (action._type == button_actions.new_game)
		{	
			// Clear player score
			obj_player.clear_score()
			save_game()
			
			// Execute transition
			transition_start(action._room_target, action._type_out, action._type_in)
		}
		
		// Action type is continue_game
		if (action._type == button_actions.continue_game)
		{	
			// Load game
			load_game()
			
			// Execute transition
			transition_start(action._room_target, action._type_out, action._type_in)
		}
		
		// Action type is retry_game
		if (action._type == button_actions.retry_game)
		{	
			// Load game
			load_game()
			
			// Execute transition
			transition_start(action._room_target, action._type_out, action._type_in)
		}
		
		// Action type is quit_game
		if (action._type == button_actions.quit_game)
		{	
			// Save game
			save_game()
			
			// Execute transition
			transition_start(action._room_target, action._type_out, action._type_in)
		}
		
		// Action type is next_level
		if (action._type == button_actions.next_level)
		{	
			// Save game
			save_game()
			
			// Execute transition
			transition_start(action._room_target, action._type_out, action._type_in)
		}
		
		// Action type is pause
		if (action._type == button_actions.pause)
		{
			// Execute pause
			action._pause_menu.set_visible(true)
			action._pause_button.set_visible(false)
			action._win_button.set_enable(false)
			action._lose_button.set_enable(false)
			action._game.game_pause()
		}
			
		// Action type is unpause
		if (action._type == button_actions.unpause)
		{	
			// Execute unpause
			action._pause_menu.set_visible(false)
			action._pause_button.set_visible(true)
			action._win_button.set_enable(true)
			action._lose_button.set_enable(true)
			action._game.game_unpause()
		}
		
		// Action type is win
		if (action._type == button_actions.win)
		{
			// Execute pause
			action._win_menu.set_visible(true)
			action._pause_button.set_enable(false)
			action._win_button.set_enable(false)
			action._lose_button.set_enable(false)
			action._game.game_win()
		}
		
		// Action type is lose
		if (action._type == button_actions.lose)
		{
			// Execute pause
			action._lose_menu.set_visible(true)
			action._pause_button.set_enable(false)
			action._win_button.set_enable(false)
			action._lose_button.set_enable(false)
			action._game.game_lose()
		}
	}
}