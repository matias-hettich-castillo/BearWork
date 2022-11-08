// Inherit the parent event
event_inherited();

// Set item name
name = "TV"

// Set TV animation
animate = false

// Set TV noise effect
item_sounds.released = snd_hit_hurt

// Set TV action
action = {
	_type: item_actions.tv_play_videogame
}

set_visible(true)