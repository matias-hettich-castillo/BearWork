text = "Tile"

// Array of elements that the frame has
elements = array_create(0)

// Sets the frame and its content visibility
function set_visible(_value)
{	
	// Set frame visibility
	visible = _value
	
	// Set buttons_visibility
	for (var i=0; i<array_length(elements); i++)
	{
		elements[i].visible = _value
	}
}