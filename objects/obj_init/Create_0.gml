///@description Do not touch this
// This Object must be the first to be called by the game.
// Used to set the GUI size, set the audio listener (fix
// for audio in sequences), start the intro sequence and
// start playing the background music.

// Set GUI size at the beggining of the game
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]))

// Intro audio listener fix
audio_listener_position(camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2, 0)
audio_listener_orientation(0, 0, 1000, 0, -1 ,0)

// Start the intro sequence
transition_start(rm_title, sq_intro, sq_fadein)