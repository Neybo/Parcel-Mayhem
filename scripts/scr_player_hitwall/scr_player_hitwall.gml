function scr_player_hitwall(){
    hsp = 0
    vsp = 0
    if floor(image_index) == floor(image_number - 1) {
        grav = 0.5
        sprite_index = spr_player_idle
        state = states.normal
        image_speed = 0.35
    }
}