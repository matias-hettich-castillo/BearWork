///@description Inherit this event
// Parent object for in game frames.
// To use this first create a new object, then select this object in the "Parent" menu
// Then right click on the "Create" event of the new object and then click on the
// "Inherit Event" option. After that, you can tweak all the options below from the
// new object to your liking.

// Set frame title text
text = "Title"

// Set frame title text color
text_color = c_white

// Array of elements that the frame has asociated with
elements = array_create(0)

// Function to add frame elements
function add_element(_element)
{
	array_push(elements, _element)
}

// Sets the frame and its elements visibility, use this to show/hide the frame and elements
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