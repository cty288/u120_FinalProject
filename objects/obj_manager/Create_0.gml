enum game_state{
	start,
	in_game,
}
global.finger_added=false;
global.state=game_state.in_game;

global.die=false;
global.severed_finger_cut=false;
global.mirror_success=false;
global.splice_success=false;
global.complete_photo_flipped=false;
global.kitten_eat_fish=false;

room_list=[basement,hallway,bathroom,bedroom,exhibition_room];
function restart(){
	global.state=game_state.start;

	global.die=false;
	global.severed_finger_cut=false;
}


canPress=true;

function check_pressed(){
	return (keyboard_check_pressed(vk_space)||keyboard_check_pressed(vk_enter))&&canPress;
}