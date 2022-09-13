enum button_actions {
	transition,
	unpause,
	pause
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
		
		// Action type is pause
		if (action._type == button_actions.pause)
		{
			// Execute pause
			action._pause_menu.set_visible(true)
			action._pause_button.set_visible(false)
			action._game.game_pause()
		}
			
		// Action type is unpause
		if (action._type == button_actions.unpause)
		{	
			// Execute unpause
			action._pause_menu.set_visible(false)
			action._pause_button.set_visible(true)
			action._game.game_unpause()
		}
	}
}