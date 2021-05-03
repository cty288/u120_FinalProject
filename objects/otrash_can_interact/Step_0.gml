event_inherited()

if(!global.trash_can_search){
	addChoice(0,"Search the trash can","Leave it alone",	
	trash_can_search_photo, choice_exit);
}else{
	addChoice(0,"Search the trash can","Leave it alone",	
	trash_can_search, choice_exit);
}
