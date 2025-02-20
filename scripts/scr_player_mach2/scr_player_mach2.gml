function scr_player_mach2() {
    hsp = h_scale * movespeed
    movespeed += 0.1
    if floor(movespeed) >= 12 {
        image_index = 0
        sprite_index = spr_player_mach3
        state = states.mach3
    }
    
    if !keyrun { 
        image_index = 0
        sprite_index = spr_player_machcancel
        state = states.machcancel
    }
    
    if (keyright and h_scale == -1) or (keyleft and h_scale == 1) {
        image_index = 0
        sprite_index = spr_player_turn
        state = states.machturn
    }
    
    if keyjump and grounded {
        vsp = -10
        state = states.machjump
    }
    
    if keydown && grounded {
        y = y - 5
        image_index = 0
        mask_index = mask_playercrouch
        sprite_index = spr_player_machroll
        state = states.machslide
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