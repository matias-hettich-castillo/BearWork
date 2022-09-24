///@description Do not touch this

if (!global.mid_transition and visible and enable)
{
	if (point_in_rectangle(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height))
	{
		// Mouse pressed
		if (mouse_check_button_pressed(mb_left))
		{
			state = interactable_states.click
			
			// Execute button sound
			play_item_sound(item_sounds.pressed)
		}
		
		// Mouse held down
		else if(mouse_check_button(mb_left))
		{
			state = interactable_states.click
		}
		
		// Mouse released
		else if (mouse_check_button_released(mb_left))
		{
			// Deselect all, set this interactable selected
			with (obj_interactable) state = interactable_states.idle
			state = interactable_states.selected
	
			// Execute button sound
			play_item_sound(item_sounds.released)
	
			// Execute button command
			item_on_click(action)
		}
		
		// Mouse over
		else
		{
			if (state != interactable_states.selected)
				state = interactable_states.active
		}
	}

	// No mouse interaction
	else
	{
		// Mouse released outside of item boundaries, return to idle
		if (mouse_check_button_released(mb_left))
			state = interactable_states.idle
		
		// Return to idle if item was active or clicked
		if (state != interactable_states.selected)
			state = interactable_states.idle
	}
}

// Set button sprite according state
if (!global.mid_transition and visible)
{
	switch(state)
	{
		case interactable_states.idle:
			sprite_index = item_sprites.idle
			break
			
		case interactable_states.active:
			sprite_index = item_sprites.active
			break
			
		case interactable_states.click:
			sprite_index = item_sprites.click
			break
			
		case interactable_states.selected:
			sprite_index = item_sprites.selected
			break
			
		default:
			sprite_index = item_sprites.idle
			break
	}
}