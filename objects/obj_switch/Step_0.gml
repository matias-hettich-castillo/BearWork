// Set switch sprite according state
if (!global.mid_transition and visible)
	switch(state)
	{
		case switch_states.idle_on:
			sprite_index = switch_sprites.idle_on
			break
			
		case switch_states.idle_off:
			sprite_index = switch_sprites.idle_off
			break
			
		case switch_states.active_on:
			sprite_index = switch_sprites.active_on
			break
			
		case switch_states.active_off:
			sprite_index = switch_sprites.active_off
			break
			
		default:
			sprite_index = switch_sprites.idle_on
			break
	}