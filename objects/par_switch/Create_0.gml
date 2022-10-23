///@description Inherit this event
// Parent object for in game switches.
// To use this first create a new object, then select this object in the "Parent" menu
// Then right click on the "Create" event of the new object and then click on the
// "Inherit Event" option. After that, you can tweak all the options below from the
// new object to your liking.

// Set switch value (Do not touch this)
value = false

function get_value()
{
	return value
}

// Set switch text
text = "Switch"

// Set switch text color
text_color = c_white

// Define switch sprites
switch_sprites = {
	idle_on: spr_switch_idle_on,
	idle_off: spr_switch_idle_off,
	active_on: spr_switch_active_on,
	active_off: spr_switch_active_off
}

// Define switch sounds, change this in case you want different sound effects
switch_sounds = {
	pressed: snd_wordle_clone_type,
	released: noone,
	active: snd_blip_select
}

// Plays the corresponding switch sound in case it exists
function play_switch_sound(_sound)
{
	if (_sound != noone)
		obj_music_player.play_sfx(_sound)
}

// Set default switch command
// Use this to give switches an action to perform when clicked
// Later you have to add the action to scr_button_functions to use this
action = {
	_type: undefined
}

// Set button enable/disable function, used to make the switch interactable
enable = true

function set_enable(_value)
{
	enable = _value
}

// Sets the button visibility, used to show/hide the switch
function set_visible(_value)
{	
	// Set button visibility
	visible = _value
}

// Define switch states (Do not touch this)
enum switch_states {
	idle_on,
	idle_off,
	active_on,
	active_off
}

// Set switch default state (Do not touch this)
state = switch_states.idle_off