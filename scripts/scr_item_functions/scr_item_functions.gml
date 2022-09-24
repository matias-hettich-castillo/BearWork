// Script that contains the game item types and actions.
// Everytime there's a new item with a different functionality it must be defined here
// for it to work properly.
// If you have different items that do the same actions, just assign them the same action

// Define the different item action types here first.
enum item_actions {
	// Interactions
	win_point,
	lose_point
}

// Function that performs an action when a item object is clicked.
// The action._type determines what kind of action is performed.
// Define different on_click actions to execute on item objects
function item_on_click(action = undefined)
{
	// If action is defined
	if (action != undefined)
	{
		#region Interactions
			// Action type is win_point
			if (action._type == item_actions.win_point)
			{	
				// Execute action
				obj_player.add_score(1)
			}
			
			// Action type is lose_point
			if (action._type == item_actions.lose_point)
			{	
				// Execute action
				obj_player.add_score(-1)
			}
		#endregion
	}
}