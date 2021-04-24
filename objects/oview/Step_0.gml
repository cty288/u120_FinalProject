if instance_exists(oplayer){
    x+=(oplayer.x-x)*.1
    y+=(oplayer.y-y)*.1
}
else
    instance_destroy()

