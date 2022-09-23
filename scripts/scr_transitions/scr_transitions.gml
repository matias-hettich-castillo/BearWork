// Transition script by Shaun Spalding
// GameMaker Studio 2 - Room Transitions using Sequences Tutorial video:
// https://www.youtube.com/watch?v=TCwIerWM2iU&t=770s


global.mid_transition = false
global.room_target = -1

// Places the sequences in the room
function transition_place_sequence(_type)
{
	if (layer_exists("Transition")) layer_destroy("Transition")
	var _lay = layer_create(-9999, "Transition")
	layer_sequence_create(_lay, 0, 0, _type)
}

// Called whenever you want to go from one room to another, using any combination of in/out sequences
function transition_start(_room_target, _type_out, _type_in)
{
	if (!global.mid_transition)
	{
		global.mid_transition = true
		global.room_target = _room_target
		transition_place_sequence(_type_out)
		layer_set_target_room(_room_target)
		transition_place_sequence(_type_in)
		layer_reset_target_room()
		return true
	}
	
	else return false
}

// Called as a moment at the end of an "Out" transition sequence
function transition_change_room()
{
	room_goto(global.room_target)
}

// Called as a moment at the end of an "In" transition sequence
function transition_finished()
{
	layer_sequence_destroy(self.elementID)
	global.mid_transition = false
}