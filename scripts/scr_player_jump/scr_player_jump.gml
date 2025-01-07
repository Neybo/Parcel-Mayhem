function scr_player_jump(){
    if sprite_index != spr_player_mach3 or sprite_index != spr_player_mach2 {
        hsp = move * movespeed
        if move != 0 {
            scale = move
            h_scale = move
            movespeed = 4
        } else {
            movespeed = 0
        }
        if floor(image_index) == floor(image_number - 1){
            image_index = floor(image_number - 1)
        }
        if grounded {
            image_index = 0
            state = states.normal
        }
    } 
    if keyaction {
        vsp = -4
        movespeed = 12
        sprite_index = spr_player_attackdash
        image_index = 0
        state = states.attack
    }
    
    if keydown {
        image_index = 0
        sprite_index = spr_player_gpoundstart
        state = states.gpound
    }
}