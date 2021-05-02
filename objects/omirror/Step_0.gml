if(obj_inventory_manager.has_object(ophoto_reversed)){
	bloody=true
}


if(!bloody && !washed){
	sprite_index=s_mirror;
}else if(bloody && !washed){
	sprite_index=s_mirror_blood;
}else{
	sprite_index=s_mirror;
}