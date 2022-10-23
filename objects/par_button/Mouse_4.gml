///@description Do not touch this
// Set button state to button_states.click
if (!global.mid_transition and visible and enable)
{
	state = button_states.click
	
	// Execute button sound
	play_button_sound(button_sounds.pressed)
}