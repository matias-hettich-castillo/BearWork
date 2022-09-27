// Inherit the parent event
event_inherited();

// Set button text
text = "Delete save"

// Set button text color
text_color = c_white

// Set button action (Add action to scr_button_functions)
action = {
	_type : button_actions.delete_save,
	_room_target : rm_credits,
	_type_out : sq_fadeout,
	_type_in : sq_fadein
}

// Disable "Delete save" button in case no game data exists
if (!file_exists("savegame.save"))
{
	set_enable(false)
	text_color = c_gray
	show_debug_message("No savegame")
}