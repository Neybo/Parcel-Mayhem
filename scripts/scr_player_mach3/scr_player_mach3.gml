function scr_player_mach3() {
    hsp = h_scale * movespeed
    if movespeed < 16 movespeed += 0.1
    if !key_prs(vk_shift) && sprite_index != spr_player_sjumpcancel {
        image_index = 0
        sprite_index = spr_player_machcancel
        state = states.machcancel
    }
    
    if key_prs(vk_up) and grounded {
        image_index = 0
        sprite_index = spr_player_sjumpprep
        state = states.sjump
    }
    
    if key_prs(ord("Z")) and grounded {
        state = states.jump 
        vsp = -10
    }
    
    if ((key_prs(vk_right) and h_scale == -1) or (key_prs(vk_left) and h_scale == 1)) and sprite_index != spr_player_machjump and grounded {
        image_index = 0
        state = states.machturn
        sprite_index = spr_player_machturn
    }
    
    if grounded and sprite_index == spr_player_machjump sprite_index = spr_player_mach3 
    if grounded and sprite_index == spr_player_sjumpcancel sprite_index = spr_player_mach3
    
    if place_meeting_solid(x + h_scale, y) and !grounded {
        image_index = 0
        sprite_index = spr_player_climbwall
        state = states.climb
    }
    
    if place_meeting_solid(x + h_scale, y) and place_meeting_collision(x, y + 1) {
        hsp = 0
        sprite_index = spr_player_hitwall
        state = states.hitwall
    }
    if !instance_exists(obj_afterimage)
        inst_cr(x, y, obj_afterimage) 
}