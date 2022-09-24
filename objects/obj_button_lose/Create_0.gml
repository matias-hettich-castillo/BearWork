// Inherit the parent event
event_inherited();

// Set button text
text = "Lose!"

// Set button text color
text_color = c_white

// Set special sound when the button is pressed
button_sounds.pressed = snd_wordle_clone_wrong

// Set button action (Add action to scr_button_functions)
action = {
	_type : button_actions.lose,
	_lose_menu : obj_frame_lose,
	_pause_button : obj_button_pause,
	_win_button : obj_button_win,
	_lose_button : obj_button_lose,
	_game : obj_game
}