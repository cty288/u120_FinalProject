/// @description Insert description here
// You can write your code in this editor
sprite_index=sprites[selected_option];

if(last_mouse_x==mouse_x && last_mouse_y==mouse_y){
	if(keyboard_check_pressed(vk_left)||keyboard_check_pressed(ord("A"))){
		selected_option--;
		if(selected_option<0){
			selected_option=array_length(sprites)-1;
		}


	}

	if(keyboard_check_pressed(vk_right)||keyboard_check_pressed(ord("D"))){
		selected_option++;
		if(selected_option>=array_length(sprites)){
			selected_option=0;
		}

	}

	if(keyboard_check_pressed(vk_space)||keyboard_check_pressed(vk_enter)){
		if(selected_option==0){
			room_goto(basement);
			audio_stop_all();
		}else if(selected_option==1){
	
		}else{
			game_end()
		}
	}
}else{
	if(mouse_x>=96&&mouse_x<=216&&mouse_y>=173&&mouse_y<=428){
		selected_option=0;
	}
	if(mouse_x>=265&&mouse_x<=383&&mouse_y>=173&&mouse_y<=428){
		selected_option=1;
	}
	if(mouse_x>=438&&mouse_x<=566&&mouse_y>=173&&mouse_y<=428){
		selected_option=2;
	}
	

}

if(mouse_check_button_released(mb_left)){
	if(selected_option==0){
		room_goto(basement);
		audio_stop_all();
	}else if(selected_option==1){
	
	}else{
		game_end()
	}
}

if(last_selected_option!=selected_option){
	last_selected_option=selected_option;
	
	if(selected_option==0){
		msg="Start game";
	}else if(selected_option==1){
		msg="Resume (we haven't made this yet)";
	}else{
		msg="Exit game";
	}
	
	msg_alpha=0;
	msg_start=true;
	
	audio_play_sound(click,1,false);
	image_speed=1;
	image_index=0;
}
