function scr_player_hitwall(){
    hsp = 0
    vsp = 0
    if floor(image_index) == floor(image_number - 1 ) {
        image_index = 0
        sprite_index = spr_player_idle
        state = states.normal
    }
}