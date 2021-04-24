
event_inherited();


if(!player.is_interacting){
	page_num=-1;
}

if(distance_to_object(player)<=50){
	if(keyboard_check_pressed(vk_space)){
		if(page_num<0){
			go_to_next_page();
		}else if(content_complete){
			go_to_next_page();
		}
	}
	if(keyboard_check_pressed(vk_escape)){
		stop_interact();
	}
	
}

if(page_num>=0 && has_option && content_complete){
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
