/// @description Insert description here
// You can write your code in this editor
player=instance_find(obj_player,0);

target_x=player.x-camera_get_view_width(view_camera[0])/2;
target_y=player.y-camera_get_view_height(view_camera[0])/2;