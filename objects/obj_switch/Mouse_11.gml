// Change switch idle state
if (!global.mid_transition and visible)
	switch(value)
	{
		case true:
			state = switch_states.idle_on
			break
			
		case false:
			state = switch_states.idle_off
			break
	}