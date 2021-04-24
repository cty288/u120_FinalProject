/// @description Insert description here
// You can write your code in this editor
camera_width=camera_get_view_width(view_camera[0]);
camera_height=camera_get_view_height(view_camera[0]);

player=instance_find(obj_player,0);

select_index=0;
capacity=9;
size=0;

inventory=ds_map_create();
inventory_keys=ds_list_create();

//item sprite <=80*80


function add_to_inventory(obj,number){
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
				/*if(index!=size-1){
					//rearrange inventory_keys
					for(var i=index; i<size-1; i++){
						var temp=inventory_keys[|i+1];
						inventory_keys[|i]=temp;
					}
				}*/

				size--;
			}
		}else{ //not enough
		
		}
	}else{ //doesn't exist
		
	}
}