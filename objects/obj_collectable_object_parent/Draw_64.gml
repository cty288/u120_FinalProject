/// @description Insert description here
// You can write your code in this editor
if(msg_show){
	draw_set_font(font_interactable_msg);
	draw_set_halign(fa_middle);
	if(draw_alpha<=1){
		draw_alpha+=0.05;
	}

	draw_text_color(camera_get_view_width(view_camera[0])/2,
	camera_get_view_height(view_camera[0])/3,
	"You got a "+object_name_this,c_white,c_white,c_white,c_white,draw_alpha);
}else{
	draw_alpha-=0.05;
	draw_set_font(font_interactable_msg);
	draw_set_halign(fa_middle);
	draw_text_color(camera_get_view_width(view_camera[0])/2,
	camera_get_view_height(view_camera[0])/3,
	"You got a "+object_name_this,c_white,c_white,c_white,c_white,draw_alpha);
}