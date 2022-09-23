// Inherit the parent event
event_inherited();

// Set button text
text = "Credits"

// Set button text color
text_color = c_white

// Set button action (Add action to scr_button_functions)
action = {
	_type : button_actions.transition,
	_room_target : rm_credits,
	_type_out : sq_fadeout,
	_type_in : sq_fadein
}