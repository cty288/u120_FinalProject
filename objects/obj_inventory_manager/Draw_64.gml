/// @description Insert description here
// You can write your code in this editor
if(!player.is_chatting){
	draw_sprite(spr_game_inventory,0,30,camera_height-100);
	draw_sprite(spr_inventory_selection,0,35+select_index*85,camera_height-95);
	
	for(var i=0; i<size; i++){
		//if(ds_list_find_value(inventory_keys,i)!=undefined){
			var obj = asset_get_index(inventory_keys[|i]);
		
			var obj_sprite=obj.sprite_index;
			var number=inventory[?inventory_keys[|i]];
		
			draw_sprite(obj_sprite,0,35+5+85*i,camera_height-90);
		
			draw_set_halign(fa_right);
			draw_set_valign(fa_bottom);
			draw_set_font(font_inventory);
			draw_text(120+85*i,camera_height-5,string(number));
		//}

	}

}