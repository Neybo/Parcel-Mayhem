//if instance_exists()
var txt_arr = [
    obj_player.movespeed,
    obj_player.hsp,
    obj_player.vsp,
    global.tape,
    obj_player.grav,
    obj_player.x,
    obj_player.y,
    obj_player.mask_index,
    sprite_get_name(obj_player.sprite_index),
]
var txt_arr1 = [
    "MOVESPEED: ",
    "HSP: ",
    "VSP: ",
    "SCORE: ",
    "GRAVITY:",
    "X: ",
    "Y: ",
    "MASK: ",
    "SPR: ",
]
draw_set_font(global.creditsfont)
for (var i = 0; i < array_length(txt_arr); i++) {
    draw_text_scribble(50, 50 + i * 40, string_concat(txt_arr1[i], txt_arr[i]))
}
draw_set_color(c_white)
if window_has_focus() gameframe_draw()