enum game_state{
	start,
	in_game,
}
global.finger_added=false;
global.state=game_state.in_game;

global.die=false;
global.severed_finger_cut=false;


function restart(){
	global.state=game_state.start;

	global.die=false;
	global.severed_finger_cut=false;
}