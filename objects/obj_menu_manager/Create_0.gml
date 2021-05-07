/// @description Insert description here
// You can write your code in this editor
global.die=false;

global.finger_added=false;
global.state=game_state.in_game;
global.severed_finger_cut=false;
global.mirror_success=false;
global.splice_success=false;
global.complete_photo_flipped=false;
global.kitten_eat_fish=false;
global.trash_can_search=false;
global.kitten_died=false;
global.diary_read=false;
global.basement_door_opened=false;
audio_stop_all();
if(instance_exists(obj_manager)){
	instance_destroy();
}
if(instance_exists(obj_inventory_manager)){
	instance_destroy();
}
room_list=[basement,hallway,bathroom,bedroom,exhibition_room,statue_room,workshop,final_scene];
audio_play_sound(bgm2,1,true);
for(var i=0; i<array_length(room_list); i++){
	room_set_persistent(room_list[i],false);
}

