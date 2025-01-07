function scr_player_sjump() {
    if sprite_index == spr_player_sjumpprep or sprite_index ==  spr_player_sjumpleft or sprite_index == spr_player_sjumpright {
        if move != 0 {
            if h_scale == 1 
                sprite_index = spr_player_sjumpright
            else if h_scale == -1 
                sprite_index = spr_player_sjumpleft
            movespeed = 4
        } else {
            movespeed = 0
        }
        if !keyup {
            vsp = -10
            sprite_index = spr_player_sjump 
        } else {
            hsp = move * movespeed
        }
    }
    if sprite_index == spr_player_sjump {
        grav = 0
        vsp -= 0.5 
        movespeed = 4
        hsp = move * movespeed
        
        if keyaction {
            sprite_index = spr_player_sjumpcancelstart
            vsp = 0
            hsp = 0
        }
        if place_meeting_solid(x, y - 1){
            image_speed = 2
            sprite_index = spr_player_sjumpland
            state = states.hitwall     
        }
        if !instance_exists(obj_afterimage)
            inst_cr(x, y, obj_afterimage)
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