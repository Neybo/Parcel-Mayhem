
function key_prs(key) {
    return keyboard_check(key);
}

function key_prsp(key) {
     return keyboard_check_pressed(key);
}

function inst_cr(x, y, obj) {
    instance_create_depth(x, y, 0, obj)
}