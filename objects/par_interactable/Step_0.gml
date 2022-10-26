///@description Do not touch this

// Item disable if layer is not visible
if (layer_get_visible(layer)) {visible = false}

// Item interaction
if (!global.mid_transition and visible and enable)
{
	// Check if the mouse is over the item
	if (point_in_rectangle(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height))
	{
		// Used to check if there's another item selected
		var check_other_selected = false
		
		// Deselect all
		with (par_interactable)
		{
			// Check if there is another item currently selected
			if (state == interactable_states.selected)
				check_other_selected = true
			
			// Make this item idle
			// If there's a selected item, keep it selected
			if (state != interactable_states.selected)
				state = interactable_states.idle
		}
		
		// Make this item active
		// If there's a selected item, keep it selected
		if (state != interactable_states.selected)
			state = interactable_states.active
		
		// Mouse pressed
		if (mouse_check_button_pressed(mb_left))
		{
			// Set the item state to click
			if (state == interactable_states.active or state == interactable_states.selected)
			{
				state = interactable_states.click
				show_debug_message("click")
			}
		}
		
		// Mouse held down
		else if(mouse_check_button(mb_left))
		{
			// Set the item state to held
			if (state == interactable_states.active or state == interactable_states.selected)
			{
				state = interactable_states.held
				show_debug_message("held")
			}
		}
		
		// Mouse released
		else if (mouse_check_button_released(mb_left))
		{
			// Set the item state to selected only if there is no other one selected
			if ((state == interactable_states.active or state == interactable_states.selected)
				and !check_other_selected)
			{
				state = interactable_states.selected
				show_debug_message("selected")
				do_action = true	// Do the item action once
			}
		}
		
		// Mouse over
		else
		{
			//if (state != interactable_states.selected)
			//{
			//	state = interactable_states.active
			//	show_debug_message("active")
			//}
		}
	}

	// No mouse interaction
	else
	{
		// Mouse released outside of item boundaries, return to idle
		if (mouse_check_button_released(mb_left))
			state = interactable_states.idle
		
		// Return to idle if item was active or clicked
		if (state == interactable_states.active)
			state = interactable_states.idle
	}
}

// Set button sprite according to state
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
			
		case interactable_states.held:
			sprite_index = item_sprites.held
			break
			
		case interactable_states.click:
			sprite_index = item_sprites.click
			break
			
		case interactable_states.selected:
			sprite_index = item_sprites.selected
			break
	}
}