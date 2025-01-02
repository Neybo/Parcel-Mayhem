function scr_player_machjump(){
        if sprite_index == spr_player_mach3 or sprite_index == spr_player_mach2 {
        hsp = h_scale * movespeed
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
}