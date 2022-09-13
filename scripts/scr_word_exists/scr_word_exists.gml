/// @function		word_exists(words_array, input_string)
/// @description	Returns true if input_string exists inside words_array
/// @param	words_array		Array of words to search
/// @param	input_string	String to be searched
/// @return	{bool}

function word_exists(words_array, input_string)
{
	var loop = 0;
	
	// Repeat for each word inside array
	repeat (array_length(words_array))
	{
		// If the word is found
		if (words_array[loop++] == input_string)
			return true;
	}
	
	// Return in case the word was not found
	return false;
}