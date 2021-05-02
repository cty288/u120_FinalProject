event_inherited()

if(!obj_inventory_manager.has_object(owater_empty)&&!
obj_inventory_manager.has_object(owater_full)){
	addChoice(0,"Search on the bed","Search under the bed","Leave it alone",	
	search_on_the_bed,search_under_the_bed, choice_exit);
}else{
	addChoice(0,"Search on the bed","Leave it alone",	
	search_on_the_bed, choice_exit);
}
