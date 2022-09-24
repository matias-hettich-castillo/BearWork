// Inherit the parent event
event_inherited();

// Set switch text
text = "Enable debug mode"

// Set switch value
value = global.game_debug_mode

// Set update action to switch
action = {
	_type: switch_actions.update_game_debug_mode,
	_switch: id
}