function addInventoryCut(argument0, argument1) {
	//create required object on coordinate provided 
	with argument0{
		//put_into_inventory(argument1)
		obj_inventory_manager.add_to_inventory(id,1,argument1);	
	}
	endCut()
 
}