///@description Do not touch this

// Item disable if layer is not visible
if (!layer_get_visible(layer)) {visible = false}

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