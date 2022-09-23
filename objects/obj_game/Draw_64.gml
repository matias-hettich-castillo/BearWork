///@description Do your game here
// Draw icon sprite
draw_self()

// Draw game text
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(DEFAULT_FONT)
draw_set_color(text_color)

draw_text(8, 8, text)
draw_text(8, 16, "score: " + string(obj_player.player_score))