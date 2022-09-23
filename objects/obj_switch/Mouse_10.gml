///@description Do not touch this
// Change switch active state
if (!global.mid_transition and visible and enable)
	switch(value)
	{
		case true:
			state = switch_states.active_on
			break
			
		case false:
			state = switch_states.active_off
			break
	}