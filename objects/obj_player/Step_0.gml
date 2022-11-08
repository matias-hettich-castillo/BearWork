/// @description Don't touch this

// Elements selection handling
if (!global.mid_transition)
{
	// Get elements under mouse position
	var elements = array_create(0)
	with (par_interactable)
	{
		// Add all the elements that are currently under the mouse
		if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
		{
			array_push(elements, id)
		}
	}
	
	// Get number of elements under the mouse
	var num = array_length(elements)
	var top_element = noone
	
	// In case there's at least one element under the mouse
	if (num > 0)
	{
		// Get only the top element that is under the mouse
		top_element = elements[0]
		for (var i = 1; i < num; i++)
		{
			if (elements[i].y > top_element.y)
			{
				top_element = elements[i]
			}
		}
		
		// Do mouse checks only if element is visible and enable
		if (top_element.visible and top_element.enable)
		{
			#region Deselect all
			with (par_interactable)
			{
				// If there's a selected item, keep it selected
				if (state != interactable_states.selected)
				{
					state = interactable_states.idle
				}
			}
			#endregion
		
			#region Set top_element as active
			// If top_element is selected, keep it selected
			if (top_element.state != interactable_states.selected)
			{
				top_element.state = interactable_states.active
			}
			#endregion
	
			#region Mouse click event
			if (mouse_check_button_pressed(mb_left))
			{
				// Set the top_element state to click
				if (top_element.state == interactable_states.active or top_element.state == interactable_states.selected)
				{
					top_element.state = interactable_states.click
				}
			}
			#endregion
	
			#region Mouse held event
			else if(mouse_check_button(mb_left))
			{
				// Set the top_element state to held
				if (top_element.state == interactable_states.active or top_element.state == interactable_states.selected)
				{
					top_element.state = interactable_states.held
				}
			}
			#endregion
	
			#region Mouse release event
			else if (mouse_check_button_released(mb_left))
			{
				// Set the top_element state to selected only if there is no other one selected
				if ((top_element.state == interactable_states.active or top_element.state == interactable_states.selected))
				{
					// Deselect all elements
					with (par_interactable)
					{
						state = interactable_states.idle
					}
				
					// Set top element selected
					top_element.state = interactable_states.selected
					top_element.do_action = true	// Do the top_element action once
				}
			}
			#endregion
		}
	}
	
	// Case there's no element under the mouse
	else
	{
		// Mouse outside of any element boundaries
		with (par_interactable)
		{
			// Only do stuff if the element is visible and enable
			if (visible and enable)
			{
				// If element state was active, set it idle
				if (state == interactable_states.active)
				{
					state = state = interactable_states.idle
				}
			
				// If mouse was clicked with no item under it, make all states idle
				if (mouse_check_button_released(mb_left))
				{
					state = interactable_states.idle
				}
			}
		}
	}
}