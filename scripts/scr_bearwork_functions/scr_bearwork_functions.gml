// Here are some usefull functions for different things that the framework does

#region String handling

	// Function that splits a string into an array of words according to a separator
	function string_split(_string, _separator)
	{
		var _word = ""
		var _words = array_create(0)
		
		// First we trim the _string
		_string = string_trim(_string)
		
		// We iterate for each character of the string
		for (var i=1; i<=string_length(_string); i++)
		{
			// In case the char is not equal to _separator add it to the word
			if (string_char_at(_string, i) != _separator)
			{
				_word = _word + string_char_at(_string, i)
			}
			
			// In case the that is equal to _separator add the word to the array
			else
			{
				array_push(_words, _word)
				_word = ""
			}
		}
		// We add the last word
		array_push(_words, _word)
		
		// We return the array of words
		return _words
	}
	
	// Function that erases blank spaces before and after a string
	function string_trim(_string)
	{
		var _substring = ""
		
		// Remove spaces before
		while (string_char_at(_string, 1) == " ")
		{
			_substring = string_copy(_string, 2, string_length(_string)-1)
			_string = _substring
			_substring = ""
		}
		
		// Remove spaces after
		while (string_char_at(_string, string_length(_string)) == " ")
		{
			_substring = string_copy(_string, 1, string_length(_string)-1)
			_string = _substring
			_substring = ""
		}
		return _string
	}
#endregion