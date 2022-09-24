///@description Add player options here
// Object that manages the different variables and functions that are related to the player.
// Must be called on rm_start as the last object of that room.

// Set the mouse icon for the game
mouse_icon = {
	idle: spr_mouse_idle,
	click: spr_mouse_click
}

// Set player score
player_score = 0

// Function that clears the player score
function clear_score()
{
	player_score = 0
}

// Function that sets the player score
function set_score(_value)
{
	player_score = _value
}

// Function that adds a value to the player score
function add_score(_value)
{
	player_score += _value
}

// Load game data
load_game()
load_game(true)