function scr_player_machturn(){
    hsp = h_scale * movespeed
    movespeed = approach(movespeed, 0, 0.4)
    if floor(image_index) == (image_number - 1)  and grounded {
        if sprite_index == spr_player_machturn {
            hsp = 0
            h_scale *= -1
            image_index = 0     
            sprite_index = spr_player_mach3 
            movespeed = 12
            state = states.mach3
        } else if sprite_index == spr_player_turn {
            hsp = 0
            h_scale *= -1
            image_index = 0     
            sprite_index = spr_player_mach2
            movespeed = 8
            state = states.mach2
        }
    }
    if floor(image_index) == (image_number - 1) && (sprite_index == spr_player_machturn || sprite_index = spr_player_turn) {
        if (!grounded)
        {
            image_index = image_number - 1
        }
        else
            image_index = image_number - 1
    }
    else
        image_speed = 0.35
}