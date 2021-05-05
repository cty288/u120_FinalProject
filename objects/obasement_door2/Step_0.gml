event_inherited()

if(!global.complete_photo_flipped){
	if(obj_inventory_manager.has_object(okey)||(obj_inventory_manager.has_object(obloody_key))){
		addChoice(0,"Use the key","Leave it alone",
		use_key2,choice_exit);
	}
}else{
	interact_sound=noone;
	text_info=[
	["You",g01,"This door is open! The unlocking sound that I heard must come from this door!"]
	]
	if(instance_exists(otext)){
			show_debug_message(otext.page);
	}

	addChoice(0,"Go out","Stay in the room",
	basement_go_out2,choice_exit);
}