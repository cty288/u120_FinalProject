/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_inventory_big);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

if(msg_start){
	msg_alpha+=0.05;
	if(msg_alpha>2){
		msg_start=false;
	}

}else{
	msg_alpha-=0.05;
}

draw_text_color(view_wport[0]/2,view_hport[0]/4+100,msg,c_white,c_white,c_white,c_white,msg_alpha);
draw_text(view_wport[0]/2,view_hport[0]/4,counter);
draw_text(view_wport[0]/2,view_hport[0]/4-100,image_index);