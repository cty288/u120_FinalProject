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
global.complete_photo_flipped=true;
global.kitten_eat_fish=false;
global.trash_can_search=false;
global.kitten_died=true;
global.diary_read=false;
global.basement_door_opened=true;

prev_room="";

room_list=[basement,hallway,bathroom,bedroom,exhibition_room,statue_room,workshop,final_scene];

room_sound=ds_map_create();
ds_map_add(room_sound,"basement",[basement_ambience]);
ds_map_add(room_sound,"bathroom",[bathroom_ambience_01]);
ds_map_add(room_sound,"hallway",[hallway_ambience_48000_1_01]);
ds_map_add(room_sound,"bedroom",[bedroom_sound]);
ds_map_add(room_sound,"statue_room",[statue_bgm]);
ds_map_add(room_sound,"exhibition_room",[basement_ambience]);
ds_map_add(room_sound,"workshop",[bgm1]);

room_volume=ds_map_create();
ds_map_add(room_volume,"basement",[1]);
ds_map_add(room_volume,"bathroom",[1]);
ds_map_add(room_volume,"hallway",[1]);
ds_map_add(room_volume,"bedroom",[1]);
ds_map_add(room_volume,"statue_room",[1]);
ds_map_add(room_volume,"exhibition_room",[0.8]);
ds_map_add(room_volume,"workshop",[0.4]);

function restart(){
	global.state=game_state.start;
	prev_room="";
	global.die=false;
	global.severed_finger_cut=false;
}


canPress=true;

function check_pressed(){
	return (keyboard_check_pressed(vk_space)||keyboard_check_pressed(vk_enter))&&canPress;
}