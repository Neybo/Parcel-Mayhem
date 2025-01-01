function scr_player_jump(){
    if sprite_index != spr_player_mach3 or sprite_index != spr_player_mach2 {
        // hsp = move * movespeed
        if move != 0 {
            scale = move
            h_scale = move
            movespeed = 4
        } else {
            movespeed = 0
        }
        if floor(image_index) == floor(image_number - 1) and sprite_index != spr_player_mach3 || sprite_index != spr_player_mach2 {
            image_index = floor(image_number - 1)
        }
        if grounded {
            image_index = 0
            state = states.normal
        }
    } 
    if sprite_index == spr_player_mach3 or sprite_index == spr_player_mach2 {
        hsp = h_scale * 12
        if grounded {
            if sprite_index == spr_player_mach3 {
                image_index = 0
                state = states.mach3
            } else if sprite_index == spr_player_mach2 {
                image_index = 0
                state = states.mach2
            }
        } 
        if place_meeting_solid(x + h_scale, y) and !grounded {
                image_index = 0
                sprite_index = spr_player_climbwall
                state = states.climb
        }
    }
    if key_prs(ord("X")) {
        vsp = -4
        movespeed = 12
        sprite_index = spr_player_attackdash
        image_index = 0
        state = states.attack
    }
    
    if key_prs(vk_down) {
        image_index = 0
        sprite_index = spr_player_gpoundstart
        state = states.gpound
    }
}