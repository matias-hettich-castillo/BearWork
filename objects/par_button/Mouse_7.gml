///@description Do not touch this
// Set button state to button_states.active
if (!global.mid_transition and visible and enable)
{
	state = button_states.active
	
	// Execute button sound
	play_button_sound(button_sounds.released)
	
	// Execute button command
	on_click(action)
}