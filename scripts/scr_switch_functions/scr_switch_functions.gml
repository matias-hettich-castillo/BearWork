// Script that contains the game switch types and actions.
// Everytime there's a new switch with a different functionality it must be defined here
// for it to work properly.
// If you have different switches that do the same action, just assign them the same action

// Define the different switch action types here first.
enum switch_actions {
	// Option menu actions
	update_game_debug_mode
}

// Function that performs an action when a switch object is clicked.
// The action._type determines what kind of action is performed.
// Define different switch_on_click actions to execute on switch objects
function switch_on_click(action = undefined)
{
	// If action is defined
	if (action != undefined)
	{
		#region Option menu actions
			// Action type is update_game_debug_mode
			if (action._type == switch_actions.update_game_debug_mode)
			{	
				// Execute action
				global.game_debug_mode = action._switch.get_value()
			}
		#endregion
	}
}