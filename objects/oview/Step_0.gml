if instance_exists(oplayer){
   target_x+=(oplayer.x-target_x)*.1
   target_y+=(oplayer.y-target_y)*.1

	x=lerp(x,target_x,0.1);
	y=lerp(y,target_y,0.1);
}
else
    instance_destroy()

