event_inherited()
global.kitten_died=true;
if(!global.kitten_died){
	
	addChoice(0,"Use the key","Leave it alone",
	use_key3,choice_exit);

}else{
	text_info=[
	["You",g01,"This door is open after I sacrifice the kitten"]
	]
	addChoice(0,"Go out","Stay in the room",
	statue_room_go_out,choice_exit);
}