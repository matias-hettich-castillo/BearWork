// Set switch value to on or off
if (!global.mid_transition and visible)
{
	value = !value
	
	if (value)
		state = switch_states.active_on
		
	else
		state = switch_states.active_off
}