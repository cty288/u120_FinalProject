/// @description Insert description here
// You can write your code in this editor
camera_width=view_get_wport(view_wport[0]);
camera_height=view_get_hport(view_hport[0]);


show_debug_message("mouse_x:"+string(mouse_x));
show_debug_message("mouse_y:"+string(mouse_y));
if(mouse_x>=204 && mouse_x<=305){
		if(mouse_y>=320 && mouse_y<=360){
			if(mouse_check_button_released(mb_left)){
				//obj_manager.restart();
				//room_goto(menu);
				//instance_destroy()
				game_end();
			}
		}
}