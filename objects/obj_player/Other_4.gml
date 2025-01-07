if hallenter {
    if targDoor == "A"  {
        if  hall == true 
            obj_player.x = obj_doorA.x + halldir* 100
        else
            obj_player.x = obj_doorA.x + 16
        obj_player.y = obj_doorA.y - 14 
    }
    if targDoor == "B" {
                if  hall == true 
            obj_player.x = obj_doorB.x + halldir* 100
        else
            obj_player.x = obj_doorB.x + 16
        obj_player.y = obj_doorB.y - 14 
    }
    if targDoor == "C" {
        if  hall == true 
            obj_player.x = obj_doorC.x + halldir* 100
        else
            obj_player.x = obj_doorC.x + 16
        obj_player.y = obj_doorC.y - 14 
    }
    hallenter = false
}
