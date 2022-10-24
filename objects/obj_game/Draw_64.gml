///@description Do your game gui here
// Draw icon sprite
draw_self()

// Set game state text variables
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(NORMAL_FONT)
draw_set_color(text_color)

// Draw game state text
draw_text(8, 8, "Player score: " + string(obj_player.player_score))

#region Debug game state
	if (global.game_debug_mode)
		draw_text(8, 16, game_state_text)
#endregion