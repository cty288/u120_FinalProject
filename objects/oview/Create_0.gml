/// @description Insert description here
// You can write your code in this editor
randomize();
target_x=oplayer.x;
target_y=oplayer.y;
shake=false;

function ending_shake(){
	target_x+=random_range(-30,30);
	target_y+=random_range(-30,30);
}

