/// @description Insert description here
// You can write your code in this editor
msg_show=false;
name_alpha=0;

camera_width=view_get_wport(view_wport[0]);
camera_height=view_get_hport(view_hport[0]);

function show_name(){
	alarm[0]=1.5*room_speed;
	msg_show=true;
}