/// @description Insert description here
// You can write your code in this editor
if instance_exists(otext){
	if otext.y=camera_get_view_y(view_camera[0])+480-144
		draw=false
}
else
	draw=true
if draw{
	draw_sprite_ext(spr_game_inventory162,0,30,camera_height-100,2,2,0,c_white,1);
	draw_sprite_ext(spr_inventory_selection_strip2,image_index,30+4+select_index*85*0.4*2,camera_height-100+2*2,2,2,0,c_white,1);
	
	
	for(var i=0; i<size; i++){
		//if(ds_list_find_value(inventory_keys,i)!=undefined){
			var obj = asset_get_index(inventory_keys[|i]);
		
			var obj_sprite=obj.sprite_index;
			var number=inventory[?inventory_keys[|i]];
			if(i!=draw_effect_index){
				draw_sprite_stretched(obj_sprite,0,34+4+85*i*0.8,camera_height-100,70,70);

				draw_set_halign(fa_right);
				draw_set_valign(fa_bottom);
				draw_set_font(font_inventory_big);
				draw_set_color(c_white);

				draw_text(30+90*0.8+85*i*0.8,camera_height-20,string(number));
			}
		//}

	}
	if(draw_effect){

		var target_x=34+4+85*draw_effect_index*0.8;
		var target_y=camera_height-100;
		draw_effect_pos_x=lerp(draw_effect_pos_x,target_x,0.1);
		draw_effect_pos_y=lerp(draw_effect_pos_y,target_y,0.1);
	
		if(abs(point_distance(target_x,target_y,draw_effect_pos_x,draw_effect_pos_y)<=30)){
			draw_effect=false;
			draw_effect_index=-1;
		}else{
				//show_debug_message("111");
				
			draw_sprite_stretched(draw_effect_sprite,0,draw_effect_pos_x,draw_effect_pos_y,70,70);
		}
	
	}
	if(selected_name!=undefined){
			if(msg_show){
			draw_set_font(font_inventory_big);
			draw_set_halign(fa_middle);
			if(name_alpha<=1){
				name_alpha+=0.05;
			}
		
			draw_text_color(camera_width/2,
			camera_height-110,
			selected_name,c_white,c_white,c_white,c_white,name_alpha);
		}else{
			name_alpha-=0.05;
			draw_set_font(font_inventory_big);
			draw_set_halign(fa_middle);
			draw_text_color(camera_width/2,
			camera_height-110,
			selected_name,c_white,c_white,c_white,c_white,name_alpha);
		}
	}


}
	
