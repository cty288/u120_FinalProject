player=instance_find(obj_player,0);
page_num=-1;


typewriter_msg="";
typewriter_index=0;
typewriter_total=0;

content_complete=false;
active=true;
visited=false;

//general show message function, call this function for every dialogue. see obj_npc_test for a complete example
//DO NOT MODIFY THIS!
function show_system_message(speaker_sprite,speaker_name,message_show,message_scale,has_next_page){
	
	typewriter_total=string_length(message_show);
	if(has_next_page){
		draw_sprite(spr_chatbox_next_page,-1,0,418);
	}else{
		draw_sprite(spr_chatbox,0,0,418);
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
	if(speaker_sprite!=noone){
		draw_sprite_ext(speaker_sprite,0,1200,318,speaker_sprite_scale,speaker_sprite_scale,0,c_white,
		1);
	}
	draw_set_font(font_message);
	if(speaker_name!=""){
		draw_text_transformed_color(40,435,speaker_name+":",1.5,1.5,0,speaker_name_color,speaker_name_color,speaker_name_color,speaker_name_color,1);
	}
	draw_set_color(c_white);
	draw_text_ext_transformed(40,505,typewriter_msg,40,1300,message_scale,message_scale,0);

}

function stop_msg(){
	player.system_msg=false;
	active=false;
	visited=false;
}


//DO NOT call this function in its children.
function go_to_next_page(){
	player.system_msg=true;
	page_num++;
	typewriter_index=0;
	typewriter_msg="";
	audio_play_sound(sound_talk,1,false);	
}

//event specific to different npcs, need to be override by its children.
//last_option_choice: The option that the player chooses in the last page
//last_label (unique): The dialogue label that the player saw in the last page
function draw_ui_event(){

}

