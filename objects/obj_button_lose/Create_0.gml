// Inherit the parent event
event_inherited();

text = "Lose!"

action = {
	_type : button_actions.lose,
	_lose_menu : obj_frame_lose,
	_pause_button : obj_button_pause,
	_win_button : obj_button_win,
	_lose_button : obj_button_lose,
	_game : obj_game
}