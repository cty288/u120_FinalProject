event_inherited()

if(!global.flower_vessel_opened){
	if(obj_inventory_manager.has_object(opage_of_flower)){
		
	addChoice(0,"Use the page of flower","Look inside","Leave it alone",
	use_page_of_flower,look_inside_vessel,choice_exit);

	}else{
			addChoice(0,"Look inside","Leave it alone",
			look_inside_vessel,choice_exit);
	}

}else{
	text_info=[
	["You",g01,"This flower vessel has just been broken by me"],
	]
}
