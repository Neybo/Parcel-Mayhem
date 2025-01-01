function scr_player_jump(){
    if sprite_index != spr_player_mach3 || sprite_index != spr_player_mach3 {
    hsp = move * movespeed
    if move != 0 {
        scale = move
        h_scale = move
        movespeed = 4
    } else {
        movespeed = 0
    }
    if floor(image_index) == floor(image_number - 1)  {
        image_index = floor(image_number - 1)
        image_speed = 0
    }
    if grounded {
        image_index = 0
        image_speed = 0.35
        state = states.normal
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