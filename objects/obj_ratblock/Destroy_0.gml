destroy_sounds([ratsniffsnd])
scr_sound_multiple("event:/sfx/enemy/ratdie", x, y)
scr_fmod_soundeffectONESHOT("event:/sfx/enemy/die", x, y)
instance_create_depth((x + deadxoff), (y + deadyoff), -100, obj_genericpoofeffect)
end_combopoint_abrupt()
add_collect(75)
obj_drawcontroller.comboshake = 1
obj_player.supertauntcooldown += 1
scr_enemygibs(3, (x + deadxoff), (y + deadyoff))
instance_create_depth(x, y, -100, obj_genericpoofeffect)
camera_shake(3, 3)
scr_enemycorpse(deadspr, spr_ratpalette, 0, (x + deadxoff), (y + deadyoff))
ds_list_add(global.saveroom, id)
add_combo()
push_notif((9 << 0), [])