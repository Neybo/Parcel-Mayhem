function scr_player_normal() {
    hsp = move * movespeed
    if vsp < 20 
        vsp += grav
    if grounded {
        if move != 0 {
            scale = move
            h_scale = move
            sprite_index = spr_player_walk
            movespeed = 4
        } else {
            sprite_index = spr_player_idle
            movespeed = 0
        }
    }
    if image_index = floor(image_index - 1) {
        image_speed = 0
    }
    if keyjump and grounded {
        vsp = -10
        sprite_index = spr_player_jump
        image_index = 0
        state = states.jump
    }
    
    if keyaction and grounded {
        movespeed = 12
        sprite_index = spr_player_attackdash
        image_index = 0
        state = states.attack
    }
    
    if keyrun {
        movespeed = 6
        image_index = 0
        sprite_index = spr_player_machstart
        state = states.mach
    }
}