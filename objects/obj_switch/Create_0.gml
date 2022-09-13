// Define switch sprites
switch_sprites = {
	idle_on: spr_switch_idle_on,
	idle_off: spr_switch_idle_off,
	active_on: spr_switch_active_on,
	active_off: spr_switch_active_off
}

// Define switch states
enum switch_states {
	idle_on,
	idle_off,
	active_on,
	active_off
}

// Set switch default state
state = switch_states.idle_off

// Set switch value
value = false

// Set switch text
text = "Switch"

// Set switch text color
text_color = c_white