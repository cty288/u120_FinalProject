//DO NOT CHANGE THIS OBJECT!
//to create an NPC, create another object and inherit this object
//to add dialogue to that NPC, override draw_gui_event of that object
//see obj_npc_test for a detailed example
event_inherited();
option=0;
last_option_choice=0;

label="";
last_label="";

option_num=0;
player=instance_find(obj_player,0);
page_num=-1;
has_option=false;

typewriter_msg="";
typewriter_index=0;
typewriter_total=0;

content_complete=false;

set_hideable(true);

//general show message function, call this function for every dialogue. see obj_npc_test for a complete example
//DO NOT MODIFY THIS!
function show_dialogue_message(dialogue_label,speaker_name,speaker_name_color,speaker_sprite,
speaker_sprite_scale,message_show,message_scale,option_array,has_next_page){
	
	label=dialogue_label;
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
		if(array_length(option_array)>0){
			draw_set_font(font_message);
			has_option=true
			option_num=array_length(option_array);
			for(var i=0; i<array_length(option_array);i++){
				var c=c_aqua;
				if(option==i){
					c=c_white
				}
				draw_text_transformed_color(120,600+i*35,"- "+option_array[i],1,1,0,c,c,c,c,1);
			}
		}else{
			has_option=false;
		}	
	}
	if(speaker_sprite!=noone){
		draw_sprite_ext(speaker_sprite,0,1200,318,speaker_sprite_scale,speaker_sprite_scale,0,c_white,
		1);
	}
	draw_set_font(font_message);
	draw_text_transformed_color(40,435,speaker_name+":",1.5,1.5,0,speaker_name_color,speaker_name_color,speaker_name_color,speaker_name_color,1);
	draw_text_ext_transformed(40,505,typewriter_msg,40,1300,message_scale,message_scale,0);
	
	
	
	
}

function stop_chat(){
	player.is_chatting=false;
}


//DO NOT call this function in its children.
function go_to_next_page(){
	player.is_chatting=true;
	page_num++;
	last_option_choice=option;
	last_label=label;
		
	option=0;
	label="";
	typewriter_index=0;
	typewriter_msg="";
	audio_play_sound(sound_talk,1,false);	
}

//event specific to different npcs, need to be override by its children.
//last_option_choice: The option that the player chooses in the last page
//last_label (unique): The dialogue label that the player saw in the last page
function draw_gui_event(){

}

