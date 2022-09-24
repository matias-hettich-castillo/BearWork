/// @description Don't touch this
// Draw mouse icon
if (mouse_check_button(mb_left))
	draw_sprite(mouse_icon.click, 0, mouse_x, mouse_y)
else
	draw_sprite(mouse_icon.idle, 0, mouse_x, mouse_y)