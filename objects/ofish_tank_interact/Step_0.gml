event_inherited()

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

