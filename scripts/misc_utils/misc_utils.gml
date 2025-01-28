/// @desc A Script that handles collision between destroyables
function col_dest() {
    if state == states.attack or state == states.mach or state == states.mach2 or state == states.mach3 or state == states.machjump or state == states.machslide {
        with (instance_place(x + hsp, y, par_dest)) {
            instance_destroy()
        } 
        with (instance_place(x, y + sign(vsp), par_dest)) {
            instance_destroy()
        }
                with (instance_place(x + sign(hsp), y, par_dest)) {
            instance_destroy()
        }
    }
}

function create_deb(count, sprite = spr_par_dest, x, y) {
    repeat (count) {
        with (inst_cr(x, y, obj_debris)) {
            hsp = random_range(-10, 10)
            vsp = random_range(-10, 0)
        }
    }
}

function sound_play(audio, loop = true , exist = true) {
    if exist {
        if !audio_is_playing(audio) audio_play_sound(audio, 1, loop)
    } else {
        audio_play_sound(audio, 1, loop)
    }
}
function sound_stop(audio) {
    if audio_is_playing(audio) audio_stop_sound(audio)
}

function mach_sound() {
    switch state {
        case states.mach:
            sound_play(sfx_mach1, true, true)
            sound_stop(sfx_mach2)
            sound_stop(sfx_mach3)
        sound_stop(sfx_machslideboost)
            break
        case states.mach2:
            sound_play(sfx_mach2, true, true)
            sound_stop(sfx_mach1)
        sound_stop(sfx_machslideboost)
            break
        case states.mach3:
            sound_play(sfx_mach3, true, true)
            sound_stop(sfx_mach2)
            sound_stop(sfx_machslideboost)
            break
        case states.machturn:
            sound_play(sfx_machslideboost)
            break
        default: 
            sound_stop(sfx_machslideboost)
            sound_stop(sfx_mach1)
            sound_stop(sfx_mach2)
            sound_stop(sfx_mach3)
            break
        }
}

