/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function draw_ui_event(){
	//for complex dialogue, switch case page_num first.
	//for each time you press space bar, you go to next page, and page_num + 1
	switch page_num{
		case 0:
			show_system_message(noone,"You","Where am I?...",
			1,true);
		break;
		case 1:
			show_system_message(noone,"You","Am I in the basement?...What happened?",
			1,true);
		break
		case 2:
		show_system_message(noone,"You","It's so dark...But there's seem to be a box..",1,true);
		break;
		case 3:
		show_system_message(noone,"","(Walk with W/A/S/D to explore the basement)",1,false);
		break;
		case 4:
		stop_msg();
		break;
	}
}