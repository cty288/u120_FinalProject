event_inherited()


if(!omirror.washed && !omirror.bloody){ //no reversed
	
	text_info=[
		["You",g01,"The floor beneath the mirror was covered with blood"],
		["You",g01,"And it's so weird that things are the opposite of what they should look like in the mirror"]
		]
		
	addChoice(1,"Look closely","Leave it alone",
	look_closely_without_photo,choice_exit);
}else if(!omirror.washed && omirror.bloody){ //has reversed
	text_info=[
	["You",g01,"The mirror is bloody!"],
	["You",g01,"OMG!! This is horrible!"]
	]
	//if has water
	if(obj_inventory_manager.has_object(owater_full)){
		addChoice(1,"Put photo in front of it","Look closely","Wash it using the water","Leave alone",
		put_reversed_failed,look_closely_with_photo,wash_mirror,choice_exit);
	}else{
		addChoice(1,"Put photo in front of it","Look closely","Leave alone",
		put_reversed_failed,look_closely_with_photo,choice_exit);
	}
}else if(omirror.washed && omirror.bloody && !global.mirror_success){ //clean
	text_info=[
	["You",g01,"What should I do with the mirror now?"]
	]
	
	addChoice(0,"Put photo in front of it","Look closely","Leave alone",
	put_reversed_success,look_closely_without_photo,choice_exit);
}else if(global.mirror_success){
	text_info=[
	["You",g01,"What should I do with the mirror now?"]
	]
	addChoice(0,"Look closely","Leave alone",look_closely_without_photo,choice_exit);
}

