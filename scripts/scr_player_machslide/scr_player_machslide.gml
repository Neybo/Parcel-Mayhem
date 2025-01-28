function scr_player_machslide() {
    hsp = h_scale * movespeed
    if !keydown && sprite_index != spr_player_rollgetup {
        mask_index = spr_player_mask 
        image_index = 0
        sprite_index = spr_player_rollgetup
    }
    if sprite_index == spr_player_rollgetup and floor(image_index) == image_number - 1 {
        if movespeed > 12 {
            mask_index = spr_player_mask 
            image_index = 0
            sprite_index = spr_player_mach3
            state = states.mach3
        } else if movespeed > 8 {
            mask_index = spr_player_mask 
            image_index = 0
            sprite_index = spr_player_mach2
            state = states.mach2
        } /*else if movespeed < 8 {
            image_index = 0
            sprite_index = spr_player_machstart
            state = states.mach
        }*/
    }
    if !instance_exists(obj_afterimage)
        inst_cr(x, y, obj_afterimage) 
}