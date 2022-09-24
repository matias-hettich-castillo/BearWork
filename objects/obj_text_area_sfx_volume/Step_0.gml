// Update horizontal/vertical align
text_halign = fa_center
text_valign = fa_top

// Update text area text
var _value = obj_music_player.get_sfx_volume()
text =  string(_value * 10) + "%"

// Build text area text
text_area_build()