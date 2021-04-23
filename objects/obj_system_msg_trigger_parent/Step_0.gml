
if(!player.system_msg){
	page_num=-1;
	option=0;
	label="";
}

if(page_num>=0){
	if(keyboard_check_pressed(vk_space)){
		if(content_complete){
			go_to_next_page();
		}

	}else if(mouse_check_button_pressed(mb_left)&&content_complete){
		go_to_next_page();
	}
}


