/// @description Insert description here
// You can write your code in this editor
draw_self();
if(page_num>=0){
	draw_set_color(c_white);
	
	draw_event();
	if(has_option&&content_complete){
		draw_sprite_ext(spr_red_arrow,0,x-195+sprite_width/2,y-48+20*option,
		0.6,0.6,0,c_white,1);
	}
}
