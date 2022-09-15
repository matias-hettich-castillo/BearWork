// Inherit the parent event
event_inherited();

text = "New Game"

action = {
	_type : button_actions.new_game,
	_room_target : rm_game,
	_type_out : sq_fadeout,
	_type_in : sq_fadein
}