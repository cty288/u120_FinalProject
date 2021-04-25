/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(otext)&&!instance_exists(omessage)){
	draw_sprite(spr_game_inventory162,0,30,camera_height-50);
	draw_sprite(spr_inventory_selection_strip2,0,30+5+select_index*85*0.4,camera_height-50+5);
	
	
	for(var i=0; i<size; i++){
		//if(ds_list_find_value(inventory_keys,i)!=undefined){
			var obj = asset_get_index(inventory_keys[|i]);
		
			var obj_sprite=obj.sprite_index;
			var number=inventory[?inventory_keys[|i]];
		
			draw_sprite(obj_sprite,0,35+5+85*i,camera_height-90);
		
			draw_set_halign(fa_right);
			draw_set_valign(fa_bottom);
			draw_set_font(font_inventory);
			draw_set_color(c_white);
			draw_text(120+85*i,camera_height-5,string(number));
		//}

	}
	if(selected_name!=undefined){
			if(msg_show){
			draw_set_font(font_inventory);
			draw_set_halign(fa_middle);
			if(name_alpha<=1){
				name_alpha+=0.05;
			}
		
			draw_text_color(camera_get_view_width(view_camera[0])/2,
			camera_height-110,
			selected_name,c_white,c_white,c_white,c_white,name_alpha);
		}else{
			name_alpha-=0.05;
			draw_set_font(font_inventory);
			draw_set_halign(fa_middle);
			draw_text_color(camera_get_view_width(view_camera[0])/2,
			camera_height-110,
			selected_name,c_white,c_white,c_white,c_white,name_alpha);
		}
	}

}