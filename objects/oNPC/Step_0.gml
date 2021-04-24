event_inherited()

if mysprite[1]=noone
    image_alpha=0

npcMove()
spriteMove()

if instance_exists(oplayer) and mytextbox!=noone{
    faceDialog(oplayer)
}
else if ms=0 and !instance_exists(ocutscene){
    if mysprite[1]!=noone
        sprite_index=mysprite[1]
}

