/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(!global.finger_added){
	addChoice(1,"Open its mouth","Squeeze its eyeball","Take off its finger","exit",
open_mouth,squeeze_eyeball,add_finger,choice_exit);
}else{
	addChoice(1,"Open its mouth","Squeeze its eyeball","exit",
open_mouth,squeeze_eyeball,choice_exit);
}



