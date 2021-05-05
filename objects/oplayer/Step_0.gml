depth=-y/32

if room_persistent=false
    room_persistent=true
if oplayer.persistent=false
    oplayer.persistent=true

controlMove()

if ms=0{
if sprite_index=mysprite[1] or sprite_index=mysprite[2] or sprite_index=mysprite[3] or sprite_index=mysprite[4]{
    image_speed=0
    image_index=1
    if !place_snapped(16,16) 
	move_snap(16,16)
    mss=0
    }
	}
if ms==1{
    if mss=0{
        mss=1
        image_index=2
    }
    if msu=0
        image_speed=8 /30
    else if msu=1
        image_speed=12/30
}


if instance_exists(otext){
    if instance_exists(oNPC){
        if instance_nearest(x,y,oNPC).mytextbox!=noone
            faceDialog(instance_nearest(x,y,oNPC))
    }
}

if !instance_exists(oview)
    instance_create(x,y,oview)
if !instance_exists(obackground)
    instance_create(0,0,obackground)
if !instance_exists(oshader)
    instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),oshader)