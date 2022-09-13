/// @function		clean_string(input_string)
/// @description	Cleans a string of unwanted characters
/// @param			input_string	String to be cleaned
/// @return	{string}

function clean_string(input_string)
{
	var acceptable_characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	var return_string = ""
	
	// Check input_string characters
	for (var i = 1; i <= string_length(input_string); i++)
	{
		// Add only acceptable characters to the return_string
		if (string_pos(string_char_at(input_string, i), acceptable_characters) != 0)
			return_string += string_char_at(input_string, i)
	}
	
	// Return cleaned string
	return return_string;
}