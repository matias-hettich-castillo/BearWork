// Set GUI size at the beggining of the game
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]))

// Start the intro sequence
transition_start(rm_title, sq_intro, sq_fadein)