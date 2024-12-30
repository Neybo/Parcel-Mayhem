var txt_arr = [
    obj_player.movespeed,
    obj_player.hsp,
    obj_player.vsp,
    global.tape,
    obj_player.grav,
]
var txt_arr1 = [
    "MOVESPEED: ",
    "HSP: ",
    "VSP: ",
    "SCORE: ",
    "GRAVITY:"
]
draw_set_color(c_black)
for (var i = 0; i < array_length(txt_arr); i++) {
    draw_text(50, 50 + i * 20, string_concat(txt_arr1[i], txt_arr[i]))
}
draw_set_color(c_white)