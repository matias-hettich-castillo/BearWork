// Inherit the parent event
event_inherited();

text = "Quit"

action = {
	_type : button_actions.quit_game,
	_room_target : rm_title,
	_type_out : sq_fadeout,
	_type_in : sq_fadein
}