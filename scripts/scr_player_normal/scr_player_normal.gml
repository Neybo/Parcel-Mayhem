function scr_player_normal() {
    hsp = move * movespeed
    vsp += grav
    if move != 0 {
        scale = move
        h_scale = move
        sprite_index = spr_player_walk
        movespeed = 4
    } else {
        sprite_index = spr_player_idle
        movespeed = 0
    }
    if image_index = floor(image_index - 1) {
        image_speed = 0
    }
    if key_prs(ord("Z")) and grounded {
        vsp = -10
        sprite_index = spr_player_jump
        image_index = 0
        state = states.jump
    }
    
    if key_prs(ord("X")) and grounded {
        vsp = -4
        movespeed = 12
        sprite_index = spr_player_attackdash
        image_index = 0
        state = states.attack
    }
    
    if key_prs(vk_shift) {
        movespeed = 6
        image_index = 0
        sprite_index = spr_player_machstart
        state = states.mach
    }
}