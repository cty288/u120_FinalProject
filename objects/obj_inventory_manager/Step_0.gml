/// @description Insert description here
// You can write your code in this editor
camera_width=camera_get_view_width(view_camera[0]);
camera_height=camera_get_view_height(view_camera[0]);

if(!player.is_chatting){
	if(keyboard_check_pressed(vk_left)){
		select_index--;
		if(select_index<0){
			select_index=capacity-1;
		}
	}
	if(keyboard_check_pressed(vk_right)){
		select_index++;
		select_index%=capacity;
	}
	
	if(keyboard_check_pressed(ord("Q"))){
		if(select_index<size){
			var obj = asset_get_index(inventory_keys[|select_index]);
			instance_create_layer(player.x-50,player.y,"Instances",obj);
			remove_from_inventory(obj,1);
		}

		
	}
	
}