// Update horizontal/vertical align
text_halign = fa_center
text_valign = fa_top

// Update text area text
var _value = obj_music_player.get_master_volume()
text =  string(floor(_value * 100)) + "%"

// Build text area text
text_area_build()