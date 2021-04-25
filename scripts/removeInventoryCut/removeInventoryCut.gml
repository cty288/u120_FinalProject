// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function removeInventoryCut(argument0){
	//create required object on coordinate provided 
	with argument0{
		
		obj_inventory_manager.remove_from_inventory(id,1);	
	}
	endCut()
 
}