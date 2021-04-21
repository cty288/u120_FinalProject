enum game_state{
	start
}

global.state=game_state.start;
player=instance_find(obj_player,0);
colliders[0]=obj_obstacle_parent;


camera_width=camera_get_view_width(view_camera[0]);
camera_height=camera_get_view_height(view_camera[0]);

