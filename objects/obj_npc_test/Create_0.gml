//This is an example of an NPC

// Inherit the parent event
event_inherited();
set_player_move_depth_distance(80);
page_0_option[0]="2";
page_0_option[1]="3";
page_0_option[2]="998";

page_1_0_option[0]="Choice 1";
page_1_0_option[1]="Choice 2";

page_1_1_option[0]="Choice 1";
page_1_1_option[1]="Choice 2";

//to create a dialogue, simply call show_dialogue_message
//for a more complex dialogue (choices + different page content..) see the code example below
function draw_gui_event(){
	//for complex dialogue, switch case page_num first.
	//for each time you press space bar, you go to next page, and page_num + 1
	switch page_num{
		case 0:
			//this contains three options
			show_dialogue_message("a","Bad guy",c_yellow,spr_player_down,2,
			"TA DA, HACKED BY SAMMIE",
			1,page_0_option,true);
		break;
		case 1:
			//last_option_choice is the choice that the player selected in the last page, switch case this value
			switch(last_option_choice){
				case 0:
					show_dialogue_message("b","Bad guy",c_yellow,spr_player_down,2,
					"TA DA, HACKED BY SAMMIE",
					1,page_1_0_option,true);
				break;
				case 1:
					show_dialogue_message("c","Bad guy",c_yellow,spr_player_down,2,
					"TA DA, HACKED BY SAMMIE",
					1,page_1_1_option,true);
				break;
				case 2:
					show_dialogue_message("d","Bad guy",c_yellow,spr_player_down,2,
					"TA DA, HACKED BY SAMMIE",
					1,noone,true);
				break;
			}
		break;
		case 2:
			switch(last_option_choice){
				case 0:
					//use last_label to get the label of last page
					if(last_label=="b"){
						show_dialogue_message("e","Bad guy",c_yellow,spr_player_down,2,
						"Text 1_0_0",
						1,noone,false);
					}else if(last_label=="c"){
						show_dialogue_message("f","Bad guy",c_yellow,spr_player_down,2,
						"Text 1_1_0",
						1,noone,false);
					}else if(last_label=="d"){
						show_dialogue_message("f","Bad guy",c_yellow,spr_player_down,2,
						"Text 1_2",
						1,noone,false);
					}
				break;
				case 1:
					if(last_label=="b"){
						show_dialogue_message("e","Bad guy",c_yellow,spr_player_down,2,
						"Text 1_0_1",
						1,noone,false);
					}else if(last_label=="c"){
						show_dialogue_message("f","Bad guy",c_yellow,spr_player_down,2,
						"Text 1_1_1",
						1,noone,false);
					}
				break;
			}
		break;
		case 3:
		stop_chat();
		break;
	}
}