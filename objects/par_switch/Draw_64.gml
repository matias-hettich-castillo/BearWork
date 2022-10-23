///@description Do not touch this
// Draw switch sprite
draw_self()

// Draw button text
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(DEFAULT_FONT)
draw_set_color(text_color)

draw_text(x + sprite_width + 4, y + sprite_height/2, text)