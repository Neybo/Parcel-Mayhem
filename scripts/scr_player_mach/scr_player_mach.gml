function scr_player_mach() {
    hsp = h_scale * movespeed
    movespeed += 0.1
    if floor(movespeed) >= 8 {
        image_index = 0
        sprite_index = spr_player_mach2
        state = states.mach2
    }
    if !key_prs(vk_shift) {
        movespeed = 4
        state = states.normal
    } 
    if key_prs(ord("Z")) and grounded {
        vsp = -10

    }
    
    if place_meeting_solid(x + h_scale, y) and place_meeting_collision(x, y + 1) {
        hsp = 0
        sprite_index = spr_player_hitwall
        state = states.hitwall
    }
}