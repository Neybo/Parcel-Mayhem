if hallenter {
    room_goto(targRoom)
    if targDoor == "A"  {
        obj_player.x = obj_doorA.x + 16
        obj_player.y = obj_doorA.y - 14
    }
    if targDoor == "B" {
        obj_player.x = obj_doorB.x + 16
        obj_player.y = obj_doorB.y - 14
    }
    hallenter = false
}
