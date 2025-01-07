if other.keyup2 {
    inst_cr(x, y, obj_fadeout)
    other.targDoor = targDoor 
    other.hallenter = true
    room_goto(targRoom)
}