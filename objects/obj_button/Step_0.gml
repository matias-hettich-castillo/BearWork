// Change button state (hovering mouse fix)
if (position_meeting(mouse_x, mouse_y, id) and enable)
{
	if (mouse_check_button(mb_left))
		state = button_states.click
	else
		state = button_states.active
}

else
	state = button_states.idle

// Set button sprite according state
if (!global.mid_transition and visible)
	switch(state)
	{
		case button_states.idle:
			sprite_index = button_sprites.idle
			break
			
		case button_states.active:
			sprite_index = button_sprites.active
			break
			
		case button_states.click:
			sprite_index = button_sprites.click
			break
			
		default:
			sprite_index = button_sprites.idle
			break
	}