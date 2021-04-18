

current_x=camera_get_view_x(view_camera[0]);
current_y=camera_get_view_y(view_camera[0]);

target_x=lerp(current_x,player.x-camera_get_view_width(view_camera[0])/2,0.1);
target_y=lerp(current_y,player.y-camera_get_view_height(view_camera[0])/2,0.1);

camera_set_view_pos(view_camera[0],target_x,target_y);