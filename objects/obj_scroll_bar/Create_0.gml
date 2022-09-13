// Define state sprites
thumb_sprites = {
	idle: spr_thumb_idle,
	active: spr_thumb_active,
	click: spr_thumb_click
}

thumb = {
	x: x,
	y: y,
	sprite: thumb_sprites.idle,
	subimage: 0,
	x_scale: 2,
	y_scale: 1
}

// Set scroll bar orientation
enum orientations {
	horizontal,
	vertical
}

orientation = orientations.horizontal

// Set default values
min_value = 0
max_value = 1
cur_value = 0.5

// Set button default state
thumb_state = button_states.idle

// Set default scroll bar text
text = "Scroll bar"

// Set default scroll bar color
text_color = c_white

// Set default button command
action = {
	_type: undefined
}