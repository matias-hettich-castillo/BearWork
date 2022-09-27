// Inherit the parent event
event_inherited();

// Set button text
text = "Continue"

// Set button text color
text_color = c_white

// Set special sound when the button is pressed
button_sounds.pressed = snd_pickup_coin

// Set button action (Add action to scr_button_functions)
action = {
	_type : button_actions.continue_game,
	_room_target : rm_game,
	_type_out : sq_fadeout,
	_type_in : sq_fadein
}

// Disable "Continue" button in case no game data exists
if (!file_exists("savegame.save"))
{
	obj_button_continue.set_enable(false)
	text_color = c_gray
	show_debug_message("No savegame")
}