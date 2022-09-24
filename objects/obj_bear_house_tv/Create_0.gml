// Inherit the parent event
event_inherited();

// Set item name
name = "TV"

// Set TV noise effect
item_sounds.released = snd_noise

// Set TV action
action = {
	_type: item_actions.lose_point
}