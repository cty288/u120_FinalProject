/// @description Insert description here
// You can write your code in this editor


camera_width=view_get_wport(view_wport[0]);
camera_height=view_get_hport(view_hport[0]);

	if(keyboard_check_pressed(vk_left)){
		select_index--;
		if(select_index<0){
			select_index=capacity-1;
		}
		alarm[0]=1.5*room_speed;
		selected_name=inventory_names[|select_index];
		msg_show=true;
		name_alpha=0;
	}
	if(keyboard_check_pressed(vk_right)){
		select_index++;
		select_index%=capacity;
		alarm[0]=1.5*room_speed;
		selected_name=inventory_names[|select_index];
		msg_show=true;
		name_alpha=0;
	}



if(global.die){
	persistent=false;
//instance_destroy();
}else{
	persistent=true;
}