function scr_player_gpound(){
    if sprite_index == spr_player_gpoundstart and floor(image_index) != floor(image_number - 1){
        vsp = 0
        hsp = 0
    }
    if floor(image_index) == floor(image_number - 1) {
        if sprite_index == spr_player_gpoundstart {
            vsp = 10
            sprite_index = spr_player_gpound
        }
        if  sprite_index == spr_player_gpoundland {
            image_index = 0
            sprite_index = spr_player_idle
            state = states.normal
        }
    }
    if sprite_index == spr_player_gpound and grounded {
        sprite_index = spr_player_gpoundland
    }
}