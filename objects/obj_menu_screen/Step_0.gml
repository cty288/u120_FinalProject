/// @description Insert description here
// You can write your code in this editor
sprite_index=sprites[selected_option];

if(keyboard_check_pressed(vk_left)keyboard_check_pressed(ord("A"))){
	selected_option--;
	if(selected_option<0){
		selected_option=array_length(sprites)-1;
	}

	image_speed=1;
	image_index=0;
}

if(keyboard_check_pressed(vk_right)||keyboard_check_pressed(ord("D"))){
	selected_option++;
	if(selected_option>=array_length(sprites)){
		selected_option=0;
	}
	image_speed=1;
	image_index=0;
}

if(keyboard_check_pressed(vk_space)||keyboard_check_pressed(vk_enter)){
	selected_option--;
	if(selected_option<0){
		selected_option=array_length(sprites)-1;
	}
	if(selected_option>=array_length(sprites)){
		selected_option=0;
	}
	image_speed=1;
	image_index=0;
}