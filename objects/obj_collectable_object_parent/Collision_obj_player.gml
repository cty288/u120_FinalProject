/// @description Insert description here
// You can write your code in this editor
if(visible&&draw){
	
	index=inventory_manager.add_to_inventory(id,1);
	if(index>=0){ //successfully picked
		on_picked();
		show_debug_message(string(index));
		
		sprite_target_x = camera_get_view_x(view_camera[0])+35+5+85*index;
		sprite_target_y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-90;

		current_sprite_x=x;
		current_sprite_y=y;
		
		draw=false;
	}
	
}


