var target = instance_find(obj_player, 0);

if (instance_exists(target))
{
    var targetX = target.x;
    var targetY = target.y;

    var current_view_x = camera_get_view_x(view_camera[0]);
    var current_view_y = camera_get_view_y(view_camera[0]);
    var current_view_w = 960
    var current_view_h = 540


    var smooth_factor = 1
    var desiredX = (targetX - (current_view_w/2));
    var desiredY = (targetY - (current_view_h/2));
    

    var smoothX = current_view_x + ((desiredX-current_view_x)*smooth_factor);
    var smoothY = current_view_y + ((desiredY-current_view_y)*smooth_factor);
    
if (boundaryClamping)
{
        if (room_width < current_view_w) smoothX = (room_width - current_view_w) * 0.5; 
            else if (smoothX < 0) smoothX = 0; 
            else if (smoothX + current_view_w > room_width)  smoothX = room_width - current_view_w;

        if(room_height < current_view_h) smoothY = (room_height - current_view_h) * .5;
        else if (smoothY < 0) smoothY = 0; 
                else if (smoothY+current_view_h > room_height) smoothY = room_height-current_view_h ;
    }
        camera_set_view_pos(view_camera[0], smoothX, smoothY);
}
