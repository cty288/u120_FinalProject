/// @description Insert description here
// You can write your code in this editor
if(draw){
	draw_self();
}else{
if(point_distance(sprite_target_x,sprite_target_y,current_sprite_x,current_sprite_y)>50){
	sprite_target_x = camera_get_view_x(view_camera[0])+35+5+85*index;
	sprite_target_y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-90;


	current_sprite_x=lerp(current_sprite_x,sprite_target_x,0.1);
	current_sprite_y=lerp(current_sprite_y,sprite_target_y,0.1);
	scale=lerp(scale,0.3,0.1);
	
	draw_sprite_ext(sprite_index,0,current_sprite_x,current_sprite_y,scale,scale,0,c_white,1);
}


}