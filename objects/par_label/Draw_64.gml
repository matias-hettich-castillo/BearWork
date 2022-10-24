///@description Do not touch this
// Draw label sprite
draw_self()

draw_set_halign(label_halign)
draw_set_valign(label_valign)
draw_set_font(NORMAL_FONT)
draw_set_color(text_color)

draw_text(x + sprite_width/2, y + sprite_height/2, text)