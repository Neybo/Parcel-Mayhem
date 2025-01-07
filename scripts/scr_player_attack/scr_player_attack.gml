function scr_player_attack(){
    hsp = h_scale * movespeed
    movespeed = approach(movespeed, 0, 0.2)
    if floor(image_index) == image_number - 1 {
        image_index = image_number - 1
    }
    /*if keyrun {
        image_index = 0
        sprite_index = spr_player_mach3
        state = states.mach3
    }*/
    if floor(movespeed) == 0 {
        
        hsp = 0
        image_index = 0
        sprite_index = spr_player_idle
        state = states.normal
    }
    if !instance_exists(obj_afterimage)
        inst_cr(x, y, obj_afterimage) 
    if place_meeting_solid(x + h_scale, y) and !grounded {
        image_index = 0
        sprite_index = spr_player_climbwall
        state = states.climb
    }
}