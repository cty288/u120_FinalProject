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
room_list=[basement,hallway,bathroom,bedroom,exhibition_room,statue_room,workshop,final_scene];

for(var i=0; i<array_length(room_list); i++){
	room_set_persistent(room_list[i],false);
}

