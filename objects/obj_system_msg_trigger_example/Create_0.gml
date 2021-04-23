/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function draw_ui_event(){
	//for complex dialogue, switch case page_num first.
	//for each time you press space bar, you go to next page, and page_num + 1
	switch page_num{
		case 0:
			show_system_message(noone,"","system message testsystem message testsystem message testsystem message testsystem message testsystem message testsystem message testsystem message test",
			1,true);
		break;
		case 1:
		show_system_message(noone,"","page 2,page 2,page 2,page 2,page 2",1,false);
		break;
		case 2:
			stop_msg();
		break;
	}
}