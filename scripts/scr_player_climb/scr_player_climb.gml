function scr_player_climb(){
    vsp = -1 * movespeed 
    if movespeed <= 16
        movespeed += 0.2
    if !place_meeting_solid(x + h_scale, y) {
        var old_x = x
        var old_y = y
        vsp = 0
        var i = 0
        while !place_meeting_solid((x + h_scale), y) {
            i++
            y++
            if place_meeting_solid((x + h_scale), y) {
                y--
                break
            }
            else if (i > 40) {
                x = old_x
                y = old_y
                break
            }
        }
        image_index = 0
        movespeed = 12
        state = states.mach3
        sprite_index = spr_player_mach3
    }
    if !keyrun {
        sprite_index = spr_player_idle
        state = states.normal
    }
    if place_meeting_solid(x, y - 1){
        image_index = 0
        image_speed = 1
        sprite_index = spr_player_sjumpland
        state = states.hitwall           
    }
    if keyjump2 {
        h_scale *= -1
        movespeed = 12
        vsp = -10
        sprite_index = spr_player_machjump
        state = states.mach3
    }
    if !instance_exists(obj_afterimage)
        inst_cr(x, y, obj_afterimage)
}