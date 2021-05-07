if(msg_show){
	draw_set_font(font_room_name);
	draw_set_halign(fa_middle);
	if(name_alpha<=2){
		name_alpha+=0.05;
	}else{
		oview.shake=false;
		
		camera_set_view_pos(view_camera[0],0,0);

	}
		
	draw_text_color(camera_width/2,
	camera_height/4,
	na,c_white,c_red,c_red,c_red,name_alpha);
	
	draw_sprite_ext(spr_exit,0,camera_width/2,
	camera_height-camera_height/4,0.3,0.3,0,c_white,name_alpha);
	
}
/*else{
	name_alpha-=0.05;
	draw_set_font(font_room_name);
	draw_set_halign(fa_middle);
	draw_text_color(camera_width/2,
	camera_height/4,
	na,c_white,c_white,c_white,c_white,name_alpha);
}