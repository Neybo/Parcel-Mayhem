function scr_player_machcancel() {
    hsp = h_scale * movespeed
    if movespeed > 0
        movespeed -= 0.5
    if floor(image_index) == image_number - 1
        image_index = image_number - 1
    if floor(movespeed) == 0 {
        hsp = 0
        image_index = 0
        sprite_index = spr_player_idle
        state = states.normal
    }
}