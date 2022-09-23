// Inherit the parent event
event_inherited();

// Set button text
text = "Win!"

// Set button text color
text_color = c_white

// Set button action (Add action to scr_button_functions)
action = {
	_type : button_actions.win,
	_win_menu : obj_frame_win,
	_pause_button : obj_button_pause,
	_win_button : obj_button_win,
	_lose_button : obj_button_lose,
	_game : obj_game,
}