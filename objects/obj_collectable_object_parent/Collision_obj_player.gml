/// @description Insert description here
// You can write your code in this editor
if(visible&&draw){
	index=put_into_inventory(object_name_this);	
	if(index!=-1){
		msg_show=true;
		draw_alpha=0;
		alarm[0]=1.5*room_speed;
	}
}


