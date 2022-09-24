///@description Do not touch this
// Set switch value to on or off
if (!global.mid_transition and visible and enable)
{
	value = !value
	
	// Execute switch sound
	play_switch_sound(switch_sounds.released)
	
	// Execute switch command
	switch_on_click(action)
	
	if (value)
		state = switch_states.active_on
		
	else
		state = switch_states.active_off
}