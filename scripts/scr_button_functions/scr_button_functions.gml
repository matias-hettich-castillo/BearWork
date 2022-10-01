// Script that contains the game button types and actions.
// Everytime there's a new button with a different functionality it must be defined here
// for it to work properly.
// If you have different buttons that do the same action, just assign them the same action

// Define the different button action types here first.
enum button_actions {
	// Transition actions
	transition,
	
	// Main menu actions
	new_game,
	continue_game,
	go_options,
	
	// Option menu actions
	master_increase_volume,
	master_decrease_volume,
	music_next_song,
	music_increase_volume,
	music_decrease_volume,
	sfx_increase_volume,
	sfx_decrease_volume,
	delete_save,
	back_options,
	
	// Music player actions
	play_music,
	pause_music,
	stop_music,
	
	// In game actions
	pause,
	unpause,
	next_level,
	retry_game,
	quit_game,
	win,
	lose
}

// Function that performs an action when a button object is clicked.
// The action._type determines what kind of action is performed.
// Define different on_click actions to execute on button objects
function on_click(action = undefined)
{
	// If action is defined
	if (action != undefined)
	{
		#region Transition actions
			// Action type is transition
			if (action._type == button_actions.transition)
			{	
				// Execute action
				transition_start(action._room_target, action._type_out, action._type_in)
			}
		#endregion
		
		#region Main menu actions
			// Action type is new_game
			if (action._type == button_actions.new_game)
			{	
				// Clear player score
				obj_player.clear_score()
				
				// Stop main menu music
				obj_music_player.stop_background_music()
				
				// Save players game
				save_game()
			
				// Execute action
				transition_start(action._room_target, action._type_out, action._type_in)
			}
			
			// Action type is continue_game
			if (action._type == button_actions.continue_game)
			{
				// Stop main menu music
				obj_music_player.stop_background_music()
				
				// Load players game
				load_game()
			
				// Execute action
				transition_start(action._room_target, action._type_out, action._type_in)
			}
			
			// Action type is go_options
			if (action._type == button_actions.go_options)
			{	
				// Load game options
				load_game(true)
				
				// Execute action
				transition_start(action._room_target, action._type_out, action._type_in)
			}
		#endregion
		
		#region Option menu actions
			// Action type is master_increase_volume
			if (action._type == button_actions.master_increase_volume)
			{	
				// Execute action
				obj_music_player.master_volume_up()
			}
		
			// Action type is master_decrease_volume
			if (action._type == button_actions.master_decrease_volume)
			{	
				// Execute action
				obj_music_player.master_volume_down()
			}
			
			// Action type is music_next_song
			if (action._type == button_actions.music_next_song)
			{
				// Execute action
				if (obj_music_player.get_background_music_id() != -1)
				{
					obj_music_player.stop_background_music()
					if (obj_music_player.get_background_music_id() == 0)
						obj_music_player.set_background_music(obj_music_player.wordle_clone_main_theme)
					else
						obj_music_player.set_background_music(obj_music_player.bear_work_main_theme)
					obj_music_player.play_background_music()
				}
			}
			
			// Action type is music_increase_volume
			if (action._type == button_actions.music_increase_volume)
			{	
				// Execute action
				obj_music_player.music_volume_up()
			}
			
			// Action type is music_decrease_volume
			if (action._type == button_actions.music_decrease_volume)
			{	
				// Execute action
				obj_music_player.music_volume_down()
			}
			
			// Action type is sfx_increase_volume
			if (action._type == button_actions.sfx_increase_volume)
			{
				// Execute action
				obj_music_player.sfx_volume_up()
				obj_music_player.play_sfx(snd_jump)
			}
			
			// Action type is sfx_decrease_volume
			if (action._type == button_actions.sfx_decrease_volume)
			{	
				// Execute action
				obj_music_player.sfx_volume_down()
				obj_music_player.play_sfx(snd_jump)
			}
			
			// Action type is delete_save
			if (action._type == button_actions.delete_save)
			{	
				// Execute action
				if (file_exists("savegame.save"))
				{
					file_delete("savegame.save")
					obj_button_delete_save.set_enable(false)
					obj_music_player.play_sfx(snd_explosion)
				}
			}
			
			// Action type is back_options
			if (action._type == button_actions.back_options)
			{	
				// Execute action
				save_game(true)
				transition_start(action._room_target, action._type_out, action._type_in)
			}
		#endregion
		
		#region Music player actions
			// Action type is play_music
			if (action._type == button_actions.play_music)
			{	
				// Execute action
				obj_music_player.resume_background_music()
				obj_music_player.play_background_music()
			}
			
			// Action type is pause_music
			if (action._type == button_actions.pause_music)
			{	
				// Execute action
				obj_music_player.pause_background_music()
			}
		
			// Action type is stop_music
			if (action._type == button_actions.stop_music)
			{	
				// Execute action
				obj_music_player.stop_background_music()
			}
		#endregion
		
		#region In game actions
			// Action type is pause
			if (action._type == button_actions.pause)
			{
				// Execute pause
				with (obj_interactable)
				{
					set_enable(false)
				}
				action._pause_menu.set_visible(true)
				action._pause_button.set_visible(false)
				action._win_button.set_visible(false)
				action._lose_button.set_visible(false)
				action._game.game_pause()
			}
			
			// Action type is unpause
			if (action._type == button_actions.unpause)
			{	
				// Execute unpause
				with (obj_interactable)
				{
					set_enable(true)
				}
				action._pause_menu.set_visible(false)
				action._pause_button.set_visible(true)
				action._win_button.set_visible(true)
				action._lose_button.set_visible(true)
				action._game.game_unpause()
			}
			
			// Action type is next_level
			if (action._type == button_actions.next_level)
			{
				// Stop bgm
				obj_music_player.stop_background_music()
				
				// Save game
				save_game()
			
				// Execute action
				transition_start(action._room_target, action._type_out, action._type_in)
			}
			
			// Action type is retry_game
			if (action._type == button_actions.retry_game)
			{				
				// Stop bgm
				obj_music_player.stop_background_music()
				
				// Execute action
				transition_start(action._room_target, action._type_out, action._type_in)
			}
			
			// Action type is quit_game
			if (action._type == button_actions.quit_game)
			{
				// Start main menu music
				obj_music_player.stop_background_music()
				obj_music_player.set_background_music(obj_music_player.bear_work_main_theme)
				obj_music_player.play_background_music()
				
				// Save game
				save_game()
			
				// Execute action
				transition_start(action._room_target, action._type_out, action._type_in)
			}
			
			// Action type is win
			if (action._type == button_actions.win)
			{
				// Execute win
				with (obj_interactable)
				{
					set_enable(false)
				}
				action._win_menu.set_visible(true)
				action._pause_button.set_visible(false)
				action._win_button.set_visible(false)
				action._lose_button.set_visible(false)
				action._game.game_win()
			}
		
			// Action type is lose
			if (action._type == button_actions.lose)
			{
				// Execute lose
				with (obj_interactable)
				{
					set_enable(false)
				}
				action._lose_menu.set_visible(true)
				action._pause_button.set_visible(false)
				action._win_button.set_visible(false)
				action._lose_button.set_visible(false)
				action._game.game_lose()
			}
		#endregion
	}
}