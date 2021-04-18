if(!player.is_chatting){
	page_num=-1;
	option=0;
}

if(distance_to_object(player)<=50){
	if(keyboard_check_pressed(vk_space)){
		player.is_chatting=true;
		page_num++;
		last_option_choice=option;
		option=0;
		typewriter_index=0;
		typewriter_msg="";
		audio_play_sound(sound_talk,1,false);
	}else if(mouse_check_button_pressed(mb_left)&&page_num>=0){
		player.is_chatting=true;
		page_num++;
		last_option_choice=option;
		option=0;
		typewriter_index=0;
		typewriter_msg="";
		audio_play_sound(sound_talk,1,false);
	}
}

if(page_num>=0 && has_option){
	if(keyboard_check_pressed(vk_up)){
		option--;
		if(option<0){
			option=option_num-1;
		}
	}
	if(keyboard_check_pressed(vk_down)){
		option++;
		option%=option_num;
	}
}

if(distance_to_object(player)<=50){
	//show_debug_message(distance_to_object(player));
	if(player.y-y>=0){
		player.depth=-10;
	}else{
		player.depth=10;
		show_debug_message(player.depth);
	}
}