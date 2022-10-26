///@description Inherit this event
// Parent object for in game items.
// To use this first create a new object, then select this object in the "Parent" menu
// Then right click on the "Create" event of the new object and then click on the
// "Inherit Event" option. After that, you can tweak all the options below from the
// new object to your liking.

// Set item default name
name = ""

// Set item name offset
name_x_offset = 1
name_y_offset = 10

// Set item name text color
name_color = c_white

// Set the item selector sprite
selector_sprite = spr_interactable

// Define state sprites, change this in case you want a different item skin
item_sprites = {
	idle: sprite_index,
	active: sprite_index,
	held: sprite_index,
	click: sprite_index,
	selected: sprite_index
}

// Set item interaction texts
idle_text = "Idle"
active_text = "Active"
held_text = "Held"
click_text = "Click"
selected_text = "Selected"

// Set default item command
// Use this to give items an action to perform when clicked
// Later you have to add the action to scr_item_functions to use this
action = {
	_type: undefined
}

// Used to define the step where the action must be performed
do_action = false

// Define item sounds, change this in case you want different sound effects
item_sounds = {
	pressed: noone,
	released: noone,
	active: noone
}

// Plays the corresponding item sound in case it exists
function play_item_sound(_sound)
{
	if (_sound != noone)
		obj_music_player.play_sfx(_sound)
}

// Set item enable/disable value
enable = true

// Set item enable/disable function, used to make the item interactable
// If the game was unpaused, enable the item after one step has passed
// In case of pause, disable inmediatly
function set_enable(_value)
{
	if (_value) alarm_set(0, 1)
	else enable = false
}

// Sets the item visibility, used to show/hide the item
function set_visible(_value)
{
	visible = _value
}

// Define item states (Do not touch this)
enum interactable_states {
	idle,
	active,
	click,
	held,
	selected
}

// Set item default state (Do not touch this)
state = interactable_states.idle