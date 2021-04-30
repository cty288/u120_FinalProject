if(msg_show){
	draw_set_font(font_room_name);
	draw_set_halign(fa_middle);
	if(name_alpha<=1){
		name_alpha+=0.05;
	}
		
	draw_text_color(camera_width/2,
	camera_height/4,
	na,c_white,c_white,c_white,c_white,name_alpha);
}else{
	name_alpha-=0.05;
	draw_set_font(font_room_name);
	draw_set_halign(fa_middle);
	draw_text_color(camera_width/2,
	camera_height/4,
	na,c_white,c_white,c_white,c_white,name_alpha);
}