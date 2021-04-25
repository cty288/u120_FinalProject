mytextbox=noone

mysprite[1]=noone

if sprite_index=sinteract
    image_alpha=0
	
function put_into_inventory(name_obj_this){
	index=obj_inventory_manager.add_to_inventory(id,1,name_obj_this);
	if(index>=0){ //successfully picked
		//on_picked();
		
		//draw=false;
	}
	return index;
}