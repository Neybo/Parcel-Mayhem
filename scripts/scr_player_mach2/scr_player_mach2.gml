function scr_player_mach2() {
    hsp = h_scale * movespeed
    movespeed += 0.1
    if floor(movespeed) >= 12 {
        image_index = 0
        sprite_index = spr_player_mach3
        state = states.mach3
    }
    
    if !key_prs(vk_shift) { 
        image_index = 0
        sprite_index = spr_player_machcancel
        state = states.machcancel
    }
    
    if (key_prs(vk_right) and h_scale == -1) or (key_prs(vk_left) and h_scale == 1) {
        image_index = 0
        hsp = 0
        sprite_index = spr_player_machturn
        state = states.machturn
    }
    
    if key_prs(ord("Z")) and grounded {
        vsp = -10

    }
    
    if place_meeting_solid(x + h_scale, y) and place_meeting_collision(x, y + 1) {
        hsp = 0
        sprite_index = spr_player_hitwall
        state = states.hitwall
    }
    
    if place_meeting_solid(x + h_scale, y) and !grounded {
        image_index = 0
        sprite_index = spr_player_climbwall
        state = states.climb
    }
    if !instance_exists(obj_afterimage)
        inst_cr(x, y, obj_afterimage)
}