// Set thumb sprite according state
if (!global.mid_transition and visible)
	switch(thumb_state)
	{
		case button_states.idle:
			thumb.sprite = thumb_sprites.idle
			break
			
		case button_states.active:
			thumb.sprite = thumb_sprites.active
			break
			
		case button_states.click:
			thumb.sprite = thumb_sprites.click
			break
			
		default:
			thumb.sprite = thumb_sprites.idle
			break
	}