/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(obj_inventory_manager.has_object(ophoto_reversed)){
	text_info=[
	["PLAYER",g01,"A bottle full of water. Maybe I can use it to wash up the mirror in the bathroom?"]
	]
}

addChoice(0,"Pick it up","Maybe later",add_full_water_bottle, choice_exit);