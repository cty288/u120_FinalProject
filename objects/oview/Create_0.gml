/// @description Insert description here
// You can write your code in this editor
randomize();
target_x=oplayer.x;
target_y=oplayer.y;
shake=false;

ending_target_width=512;
ending_target_height=384;

camera_width=1024
camera_height=768
function ending_shake(){
	var add_x=random_range(-10,10);
	var add_y=random_range(-10,10);
	var camera_x=camera_get_view_x(view_camera[0])
	var camera_y=camera_get_view_y(view_camera[0])
	camera_width=lerp(camera_width,ending_target_width,0.4);
	camera_height=lerp(camera_width,ending_target_height,0.4);
	
	camera_set_view_size(view_camera[0],camera_width,camera_height);
	camera_set_view_pos(view_camera[0],camera_x+add_x,camera_y+add_y);
}

