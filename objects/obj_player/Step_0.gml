scr_collision()
input_init()    
var scale = h_scale;
image_xscale = scale;
move = keyright - keyleft
if keyboard_check_pressed(vk_f1) game_restart()
switch state {
    case states.normal:
        scr_player_normal()
        break
    case states.jump:
        scr_player_jump()
        break
    case states.mach:
        scr_player_mach()
        break
    case states.mach2:
        scr_player_mach2()
        break
    case states.mach3:
        scr_player_mach3()
        break
    case states.climb:
        scr_player_climb()
        break
    case states.machcancel:
        scr_player_machcancel()
        break
    case states.machturn:
        scr_player_machturn()
        break
    case states.hitwall:
        scr_player_hitwall()
        break
    case states.gpound:
        scr_player_gpound()
        break
    case states.sjump:
        scr_player_sjump()
        break
    case states.attack:
        scr_player_attack()
        break
    case states.machjump:
        scr_player_machjump()
        break
}


