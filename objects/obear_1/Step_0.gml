event_inherited()

if(!global.bear_bloddy){
	addChoice(0,"Touch the bear","Maybe later",touch_bear, choice_exit);
}else{
	text_info=[
	["PLAYER",g01,"A bloody Teddy bear... Looks so horrible"],
	]
	if(obj_inventory_manager.has_object(okey)){
		addChoice(0,"Dip the key in the blood","Maybe later",dip_key, choice_exit);
	}
}

