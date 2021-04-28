event_inherited()

if(!global.basement_door_opened){
	if(obj_inventory_manager.has_object(okey)){
		addChoice(2,"Use the key","Leave it alone",
		use_key,choice_exit);
	}else if(obj_inventory_manager.has_object(obloody_key)){
		addChoice(2,"Use the bloody key","Leave it alone",
		open_basement_door,choice_exit);
	}
}else{
	text_info=[
	]
}