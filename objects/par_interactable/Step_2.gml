/// @description Do not touch this

if (state == interactable_states.selected and do_action)
{
	// Execute button sound
	play_item_sound(item_sounds.released)
	
	// Execute button command
	item_on_click(action)
	
	// Avoid repeating the action
	do_action = false
}