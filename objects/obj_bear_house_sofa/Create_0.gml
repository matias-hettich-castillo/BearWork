// Inherit the parent event
event_inherited();

// Set item name
name = "Sofa"

// Set item sound
item_sounds.released = snd_wordle_clone_miss

// Set TV action
action = {
	_type: item_actions.lose_point
}