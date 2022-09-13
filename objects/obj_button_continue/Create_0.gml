// Inherit the parent event
event_inherited();

text = "Continue"

action = {
	_type : button_actions.transition,
	_room_target : rm_game,
	_type_out : sq_fadeout,
	_type_in : sq_fadein
}