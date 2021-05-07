function addInventoryCut(argument0,argument1,argument2) {
	//create required object on coordinate provided 
	with argument0{
		//put_into_inventory(argument1)
		obj_inventory_manager.add_to_inventory(id,1,argument1,argument2);	
		audio_play_sound(magic1,1,false);
	}
	endCut()
 
}