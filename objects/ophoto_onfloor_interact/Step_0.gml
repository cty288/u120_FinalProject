event_inherited()

if(obj_inventory_manager.has_object(ophoto_reversed)){
	text_info=[
	["You",g01,"I found another half of the photo!"]
	]
	addChoice(0,"flip the photo","Splice with the other half","Leave it alone",
	flip_mirrored_photo,splice_photo_failed,choice_exit);
}else if(obj_inventory_manager.has_object(ophoto_mirrored)){
	text_info=[
	["You",g01,"I found another half of the photo! And another piece I own is now normal!"]
	]
	addChoice(0,"flip the photo","Splice with the other half","Leave it alone",
	flip_mirrored_photo,splice_photo_success,choice_exit);
}else if(!global.splice_success){ //no reversed and mirrored
	text_info=[
	["You",g01,"A half of a family photo"]
	]
	
	addChoice(0,"flip the photo","Leave it alone",
	flip_mirrored_photo,choice_exit);
}else if(global.splice_success && !global.complete_photo_flipped){
		text_info=[
		["You",g01,"A family photo"]
		]
	addChoice(0,"flip the photo","Leave it alone",
	flip_complete_photo,choice_exit);
	
}else if (global.complete_photo_flipped){
		text_info=[
		["You",g01,"This photo now turns bloody..."]
		]
		addChoice(0,"flip the photo","Leave it alone",
		flip_complete_photo_2,choice_exit);
}

