// Inherit the parent event
event_inherited();

// Set button text
text = "Retry"

// Set button text color
text_color = c_white

// Set button action (Add action to scr_button_functions)
action = {
	_type : button_actions.retry_game,
	_room_target : rm_game,
	_type_out : sq_fadeout,
	_type_in : sq_fadein
}