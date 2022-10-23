// Inherit the parent event
event_inherited()

// Update text area text
var _value = obj_music_player.get_master_volume()
set_text(string(_value * 10) + "%")