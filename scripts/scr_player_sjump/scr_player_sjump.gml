function scr_player_sjump() {
    if sprite_index == spr_player_sjumpprep {
        /*if move != 0 {
            if h_scale == 1 
                sprite_index = spr_player_sjumpright
            else if h_scale == -1 
                sprite_index = spr_player_sjumpleft
        } else {
            
        } */
        if !key_prs(vk_up) {
            vsp = -10
            sprite_index = spr_player_sjump 
        } else {
            movespeed = 4
            hsp = move * movespeed
        }
    }
    if !instance_exists(obj_afterimage)
        inst_cr(x, y, obj_afterimage) 
    if sprite_index == spr_player_sjump {
        grav = 0
        vsp -= 0.5 
        movespeed = 4
        hsp = move * movespeed
        
        if key_prs(ord("X")) {
            sprite_index = spr_player_sjumpcancelstart
            vsp = 0
            hsp = 0
        }
        if place_meeting_solid(x, y - 1){
            vsp = 10
            image_index = 0
            sprite_index = spr_player_idle
            state = states.normal       
        }
    }
    if sprite_index == spr_player_sjumpcancelstart {
        vsp = 0
        hsp = 0
        if floor(image_index ) == floor(image_number - 1) {
            if move != 0
                h_scale = move
            grav = 0.5
            vsp = -6
            image_index = 0
            movespeed = 12
            sprite_index = spr_player_sjumpcancel
            state = states.mach3
        }
    }
}