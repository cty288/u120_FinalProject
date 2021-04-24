function npcMove() {
	//give characters other than player ability to walk
	//not handy and not in use

	mtr-=1
	mtd-=1
	mtl-=1
	mtu-=1

	if mtr>=0{
	    x+=spd
	    if sprite_index!=mysprite[4]
	    sprite_index=mysprite[4]
	    ms=1
	}

	if mtl>=0{
	    x-=spd
	    if sprite_index!=mysprite[3]
	    sprite_index=mysprite[3]
	    ms=1
	}

	if mtu>=0{
	    y-=spd
	    if sprite_index!=mysprite[2]
	    sprite_index=mysprite[2]
	    ms=1
	}

	if mtd>=0{
	    y+=spd
	    if sprite_index!=mysprite[1]
	    sprite_index=mysprite[1]
	    ms=1
	}

	if mtr<0 and mtl<0 and mtu<0 and mtd<0
	    ms=0



}
