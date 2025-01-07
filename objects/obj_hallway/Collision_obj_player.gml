if !enter {
    enter = true
    inst_cr(0, 0, obj_fadeout) 
    other.targDoor = targDoor  
    other.halldir = dir
    other.hall = hll
    other.hallenter = true 
    room_goto(targRoom)
}