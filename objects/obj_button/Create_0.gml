// Define state sprites
button_sprites = {
	idle: spr_button_idle,
	active: spr_button_active,
	click: spr_button_click
}

// Define button states
enum button_states {
	idle,
	active,
	click
}

// Set button default state
state = button_states.idle

// Set button default text
text = "Button"

// Set button default text color
text_color = c_white

// Set default button command
action = {
	_type: undefined
}

// Sets the button visibility
function set_visible(_value)
{	
	// Set button visibility
	visible = _value
}