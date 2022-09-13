/// @function		scr_array_search(array, item)
/// @description	Gets the position of an item in an array, returns -1 if not found
/// @param	array	array of items to search
/// @param	item	item to be searched
/// @return	{real}

function array_search(array, item)
{
	var position = -1
	
	// Check each array item
	for (var i = 0; i < array_length(array); i++)
	{
		// If the item is found, get the position
		if (array[i] == item)
		{
			position = i
			break
		}
	}
	
	// Return the position
	return position
}