///@description Do not touch this
// Draw button sprite
draw_self()

// Draw button text
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(NORMAL_FONT)
draw_set_color(text_color)

draw_text(x + sprite_width/2, y + sprite_height/2, text)