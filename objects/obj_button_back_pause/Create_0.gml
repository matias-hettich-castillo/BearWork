// Inherit the parent event
event_inherited();

text = "Back"

action = {
	_type : button_actions.unpause,
	_pause_menu : obj_frame_pause,
	_pause_button : obj_button_pause,
	_win_button : obj_button_win,
	_lose_button : obj_button_lose,
	_game : obj_game
}