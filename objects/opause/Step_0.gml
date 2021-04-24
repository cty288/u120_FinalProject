if room=rm_pause or room=rm_start or room=rm_gameover{

if instance_exists(oplayer){
	with oplayer
		instance_destroy()
}

if page=0{
	sprite_index=menu_background6
    option=noone
	option[0]="Continue"
    option[1]="Save"
    option[2]="Load"
    option[3]="Title Page"
}
if page=3{
	sprite_index=title
	option=noone
    option[0]=start
    option[1]=load
    option[2]=shutdown
}
if page=1 or page=2{
	option=noone
    option[0]="Savefile 01"
    option[1]="Savefile 02"
    option[2]="Savefile 03"
    option[3]="Savefile 04"
    option[4]="Savefile 05"
    option[5]="Back"
}
if page=4{
	sprite_index=gameover
    option=noone
	option[0]="Continue"
    option[1]="Title Page"
}

if !instance_exists(omessage){

if keyboard_check_pressed(vk_down){
	audio_play_sound(menu_move,0,false)
    if menu_index<array_length_1d(option)-1
        menu_index++
    else
        menu_index=0
}
if keyboard_check_pressed(vk_up){
	audio_play_sound(menu_move,0,false)
    if menu_index>0
        menu_index--
    else
        menu_index=array_length_1d(option)-1
}

}

}

else{
	sprite_index=noone	
}

if !instance_exists(ocutscene) and !instance_exists(omessage)
pauseSystem()