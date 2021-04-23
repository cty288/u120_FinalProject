
event_inherited();
player=instance_find(obj_player,0);

page_num=-1;

typewriter_msg="";
typewriter_index=0;
typewriter_total=0;

content_complete=false;

set_hideable(false);

function show_interactable_message(message_show,message_scale,has_next_page){
	
	typewriter_total=string_length(message_show);
	if(has_next_page){
		draw_sprite(spr_msg_box_next_page,-1,x+sprite_width/2,y-50);
	}else{
		draw_sprite(spr_msg_box,-1,x+sprite_width/2,y-50);
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	//
	if(typewriter_index<typewriter_total){
		content_complete=false;
		typewriter_index++;
		typewriter_msg+=string_char_at(message_show,typewriter_index);
	}else{
		content_complete=true;
	}

	draw_set_font(font_interactable_msg);
	draw_text_ext_transformed_color(x-190+sprite_width/2,y-95,typewriter_msg,40,780,0.5*message_scale,0.5*message_scale,0,
	c_black,c_black,c_black,c_black,1);	
}


function stop_interact(){
	player.is_interacting=false;
}


function go_to_next_page(){
	player.is_interacting=true;
	page_num++;
	typewriter_index=0;
	typewriter_msg="";
	audio_play_sound(sound_talk,1,false);	
}


function draw_event(){

}

