/// @description Insert description here
// You can write your code in this editor
sprite_index=sprites[selected_option];

if(keyboard_check_pressed(vk_left)){
	selected_option--;
	if(selected_option<0){
		selected_option=array_length(sprites)-1;
	}
	if(selected_option>=array_length(sprites)){
		selected_option=0;
	}
	image_speed=1;
}