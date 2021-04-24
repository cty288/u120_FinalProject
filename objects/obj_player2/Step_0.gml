depth=-10;

player_speed_x-=sign(player_speed_x)
player_speed_y-=sign(player_speed_y)

x+=sign(player_speed_x)*4
y+=sign(player_speed_y)*4

if player_speed_x==0 and player_speed_y==0{
	if(keyboard_check(ord("W")) and !place_meeting(x,y-64,obj_obstacle_parent)){
		player_speed_y=-16;
	}
	if(keyboard_check(ord("S")) and !place_meeting(x,y+64,obj_obstacle_parent)){
		player_speed_y=16;
	}
	if(keyboard_check(ord("A")) and !place_meeting(x-64,y,obj_obstacle_parent)){
		player_speed_x=-16;
	}
	if(keyboard_check(ord("D")) and !place_meeting(x+64,y,obj_obstacle_parent)){
		player_speed_x=16;
	}
	
    if !place_snapped(32,32) 
	move_snap(32,32)

}
	
if(player_speed_x>0){
	sprite_index=spr_player_right;
}else if(player_speed_x<0){
	sprite_index=spr_player_left;
}

if(player_speed_y>0){
	sprite_index=spr_player_down;
}else if(player_speed_y<0){
	sprite_index=spr_player_up;
}

if((player_speed_y==0 && player_speed_x==0)||is_chatting){
	image_speed=0;
	image_index=1;
}else{
	image_speed=1;
}
