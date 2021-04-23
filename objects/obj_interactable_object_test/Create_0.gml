/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function draw_event(){
	switch page_num{
		case 0:
			show_interactable_message("test test test test test test test test test",1,true);
		break;
		case 1:
			show_interactable_message("page2 page2 page2 page2 page2 page2 page2",1,false);
		break;
		case 2:
			stop_interact();
		break;
	}
}