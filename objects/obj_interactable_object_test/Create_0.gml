/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
option_array[0]="aaa";
option_array[1]="bbb";
function draw_event(){
	switch page_num{
		case 0:
			show_interactable_message("a","test test test test test test test test test",1,option_array,true);
		break;
		case 1:
			show_interactable_message("b","page2 page2 page2 page2 page2 page2 page2",1,noone,false);
		break;
		case 2:
			stop_interact();
		break;
	}
}