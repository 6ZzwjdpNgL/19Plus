visible = 1
if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)) && obj_player.state == (8 << 0))
    instance_destroy()