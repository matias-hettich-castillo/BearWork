// Script that contains the game item types and actions.
// Everytime there's a new item with a different functionality it must be defined here
// for it to work properly.
// If you have different items that do the same actions, just assign them the same action

// Define the different item action types here first.
enum item_actions {
	// Interactions
	win_point,
	lose_point,
	tv_play_videogame
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
			
			// Action type is tv_play_videogame
			if (action._type == item_actions.tv_play_videogame)
			{	
				// Execute action
				
				// Switch the TV animation
				obj_bear_house_tv.animate = !obj_bear_house_tv.animate
				
				// Check if player turned the TV on or off
				if (obj_bear_house_tv.animate)
				{
					// If the player turned the TV on, lose points
					obj_player.add_score(-10)
					
					// Play the video game background music
					obj_music_player.set_background_music(obj_music_player.wordle_clone_gameplay)
					obj_music_player.play_background_music()
				}
				
				else
				{
					// win points
					obj_player.add_score(10)
					
					// Stop the game background music
					obj_music_player.stop_background_music()
				}
			}
		#endregion
	}
}