/// @description Do not touch this

// Draw item name and selector everytime except when item is idle
if (state != interactable_states.idle)
{
	// Draw selector
	draw_sprite_stretched(selector_sprite, 0, x-1, y-1, sprite_width+2, sprite_height+2)
	
	// Set draw text values
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(NORMAL_FONT)
	draw_set_color(name_color)

	// Draw item name
	draw_text(x-name_x_offset, y-name_y_offset, name)
}

#region Debug interaction
	if (global.game_debug_mode)
	{
		if (state == interactable_states.idle)
		{
			draw_text(x-name_x_offset, y+name_y_offset, idle_text)
		}
		
		if (state == interactable_states.active)
		{
			draw_text(x-name_x_offset, y+name_y_offset, active_text)
		}
		
		if (state == interactable_states.held)
		{
			draw_text(x-name_x_offset, y+name_y_offset, held_text)
		}

		if (state == interactable_states.click)
		{
			draw_text(x-name_x_offset, y+name_y_offset, click_text)
		}

		if (state == interactable_states.selected)
		{
			draw_text(x-name_x_offset, y+name_y_offset, selected_text)
		}
	}
#endregion