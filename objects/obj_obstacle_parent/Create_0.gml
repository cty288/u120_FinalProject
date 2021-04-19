//Parent of all obstacle (impenetrable) objects
//DO NOT put this object in the game
//To create an obstacle, create another object and inherits this object
//(well... basically almost every object in the game is an obstacle)

player=instance_find(obj_player,0);

//if this is true, player's sprite's depth will change when it moves behind the obstacle
hideable=false;

depth_distance=60;

//by default, the obstacle is not hideable (meaning the player can't "move" behind it)
//to change this, let its children call this function
function set_hideable(is_hideable){
	hideable=is_hideable;
}

//if the obstacle is hideable,
//let its children call this function if you want to change the maximum distance threhold that change the player's depth when it moves behind the NPC
function set_player_move_depth_distance(distance){
	depth_distance=distance;
}
