// Set button state to button_states.active
if (!global.mid_transition and visible and enable)
{
	state = button_states.active
	
	// Execute button command
	on_click(action)
}