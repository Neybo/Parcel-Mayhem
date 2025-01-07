
function inst_cr(x, y, obj) {
    instance_create_depth(x, y, 0, obj)
}

function input_init() {
    ini_open(SAVE)
    keyup = keyboard_check(ini_read_real("Keys", "Up", vk_up))
    keydown = keyboard_check(ini_read_real("Keys", "Down", vk_down))
    keyright = keyboard_check(ini_read_real("Keys", "Right", vk_right))
    keyleft = keyboard_check(ini_read_real("Keys", "Left", vk_left))
    keyrun = keyboard_check(ini_read_real("Keys", "Run", vk_shift))
    keyjump = keyboard_check(ini_read_real("Keys", "Jump", ord("Z")))
    keyaction = keyboard_check(ini_read_real("Keys", "Action", ord("X")))
    keyup2 = keyboard_check_pressed(ini_read_real("Keys", "Up", vk_up))
    keydown2 = keyboard_check_pressed(ini_read_real("Keys", "Down", vk_down))
    keyright2 = keyboard_check_pressed(ini_read_real("Keys", "Right", vk_right))
    keyleft2 = keyboard_check_pressed(ini_read_real("Keys", "Left", vk_left))
    keyrun2 = keyboard_check_pressed(ini_read_real("Keys", "Run", vk_shift))
    keyjump2 = keyboard_check_pressed(ini_read_real("Keys", "Jump", ord("Z")))
    keyaction2 = keyboard_check_pressed(ini_read_real("Keys", "Action", ord("X")))
    ini_close()
}