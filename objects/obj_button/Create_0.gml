///@description Inherit this event
// Parent object for in game buttons.
// To use this first create a new object, then select this object in the "Parent" menu
// Then right click on the "Create" event of the new object and then click on the
// "Inherit Event" option. After that, you can tweak all the options below from the
// new object to your liking.

// Set button default text
text = "Button"

// Set button default text color
text_color = c_white

// Set default button command
// Use this to give buttons an action to perform when clicked
// Later you have to add the action to scr_button_functions to use this
action = {
	_type: undefined
}

// Define state sprites, change this in case you want a different button skin
button_sprites = {
	idle: spr_button_idle,
	active: spr_button_active,
	click: spr_button_click,
	disable: spr_button_disable
}

// Define button sounds, change this in case you want different sound effects
button_sounds = {
	pressed: snd_wordle_clone_type,
	released: noone,
	active: snd_blip_select
}

// Plays the corresponding button sound in case it exists
function play_button_sound(_sound)
{
	if (_sound != noone)
		obj_music_player.play_sfx(_sound)
}

// Set button enable/disable function, used to make the button interactable
enable = true

function set_enable(_value)
{
	enable = _value
	if (!enable)
	{
		state = button_states.disable
		text_color = c_gray
	}
	
	else
	{
		state = button_states.idle
		text_color = c_white
	}
}

// Sets the button visibility, used to show/hide the button
function set_visible(_value)
{	
	// Set button visibility
	visible = _value
}

// Define button states (Do not touch this)
enum button_states {
	idle,
	active,
	click,
	disable
}

// Set button default state (Do not touch this)
state = button_states.idle