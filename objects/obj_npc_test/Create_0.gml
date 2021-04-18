/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

page_1_option[0]="2";
page_1_option[1]="3";
page_1_option[2]="998";

function draw_gui_event(){
	switch page_num{
		case 0:
			show_dialogue_message("Bad guy",c_yellow,spr_player_down_2,2,
			"1+1=? \n test message test message test message test message",
			1,page_1_option,true);
		break;
		case 1:
			if(last_option_choice==0){
				show_dialogue_message("Bad guy",c_yellow,spr_player_down_2,2,
				"Correct",
				1,noone,true);
			}else if(last_option_choice==1){
				show_dialogue_message("Bad guy",c_yellow,spr_player_down_2,2,
				"You stupid",
				1,noone,true);
			}else{
				show_dialogue_message("Bad guy",c_yellow,spr_player_down_2,2,
				"You stupid",
				1,noone,true);
			}

		break;
		case 2:
		break;
		case 3:
		stop_chat();
		break;
	}
}