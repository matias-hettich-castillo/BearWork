for (var i=0; i<array_length(background_text_alpha); i++)
{
	background_text_alpha[i] += background_text_alpha_change[i]
	if (background_text_alpha[i] > 1)
	{
		background_text_alpha_change[i] *= -1
	}
	
	if (background_text_alpha[i] < 0)
	{
		background_text[i] = DICTIONARY[random(array_length(DICTIONARY))]
		background_text_alpha_change[i] *= -1
	}
}
alarm_set(0, 15)