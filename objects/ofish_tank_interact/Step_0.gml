event_inherited()
if(distance_to_object(oplayer)<=64){
	if(!audio_is_playing(fish)){
		audio_play_sound(fish,1,true);
	}
}else{
	audio_stop_sound(fish);
}


if(obj_inventory_manager.has_object(owater_empty)){
	if(obj_inventory_manager.has_object(okitten)){
		addChoice(0,"Feed the kitten with fish","Fill the empty bottle", "Leave it alone",	
		feed_kitten,fill_bottle,choice_exit);
	}else{
		addChoice(0,"Fill the empty bottle", "Leave it alone",fill_bottle,choice_exit);
	}

}else{
	if(obj_inventory_manager.has_object(okitten)){
		addChoice(0,"Feed the kitten with fish", "Leave it alone",	
		feed_kitten,choice_exit);
	}
}

