/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!opened){
	if(obj_inventory_manager.has_object(ofinger)){
	addChoice(0,"Put Severed Finger inside","Open book","Leave alone",
	put_severed_finger_inside,open_book_failed,choice_exit);

	}else{
		if(global.severed_finger_cut){
			addChoice(0,"Open book","Leave alone",
			open_book_success,choice_exit);
		}else{

			addChoice(0,"Open book","Leave alone",open_book_failed,choice_exit);
	
		}
	}

}else{
	sprite_index=s_book_open;
	addChoice(0,"Leave alone",choice_exit);
}

