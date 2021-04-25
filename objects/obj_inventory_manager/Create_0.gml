/// @description Insert description here
// You can write your code in this editor
camera_width=view_get_wport(view_wport[0]);
camera_height=view_get_hport(view_hport[0]);

player=instance_find(obj_player,0);

select_index=0;
capacity=9;
size=0;

inventory=ds_map_create();
inventory_keys=ds_list_create();
inventory_names=ds_list_create();

selected_name="";
msg_show=false;
name_alpha=0;
//item sprite <=80*80


function add_to_inventory(obj,number,obj_name_this){
	var key=object_get_name(obj.object_index);
	//show_debug_message(key);
	if(ds_map_exists(inventory,key)){
		ds_map_set(inventory,key,ds_map_find_value(inventory,key)+number);	
		return ds_list_find_index(inventory_keys,key);
	}else{
		if(size<capacity){
			show_debug_message("sss");
			ds_map_add(inventory,key,number);
			ds_list_add(inventory_keys,key);
			ds_list_add(inventory_names,obj_name_this);
			size++;
			return size-1;
		}else{
			//full
			return -1;
		}
	}
}

function remove_from_inventory(obj,number){
	var key=object_get_name(obj.object_index);
	if(ds_map_exists(inventory,key)){
		if(ds_map_find_value(inventory,key)>=number){
			ds_map_set(inventory,key,ds_map_find_value(inventory,key)-number);
			if(ds_map_find_value(inventory,key)<=0){ //delete key
				ds_map_delete(inventory,key);
				var index = ds_list_find_index(inventory_keys,key);
				ds_list_delete(inventory_keys,index);
				ds_list_delete(inventory_names,index);
				size--;
			}
			return true;
		}else{ //not enough
			return false;
		}
	}else{ //doesn't exist
		return false;
	}
}