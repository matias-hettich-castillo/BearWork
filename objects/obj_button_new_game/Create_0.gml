// Inherit the parent event
event_inherited();

// Set button text
text = "New Game"

// Set button text color
text_color = c_white

// Set special sound when the button is pressed
button_sounds.pressed = snd_pickup_coin

// Set button action (Add action to scr_button_functions)
action = {
	_type : button_actions.new_game,
	_room_target : rm_game,
	_type_out : sq_fadeout,
	_type_in : sq_fadein
}