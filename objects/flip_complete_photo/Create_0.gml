event_inherited()

global.complete_photo_flipped=true;

text_info=[
	["PLAYER",g01,"Wait...I hear an unlocking sound somewhere...Is it the other door in the basement?"]
]

text_info2=[
	["PLAYER",g01,"The photo is full of blood!!!"],
//	["PLAYER",g01,"And look at the wall!"]
]

t_scene_info=[

	[pauseCut],
	[soundCut,paper,false,0],
	[messageCut,"You fliped the photo, and saw its back"],
	[shaderCut,s_photo_complete_back,1,30],
	[waitCut,room_speed],
	[shaderCut,s_photo_complete_back,0,30],
	//unlocking sound
	[soundCut,door_open,false,0],
	[waitCut,room_speed],
	[talkCut],
	[soundCut,bong,false,0],
	[spriteCut,ophoto_onfloor,s_photo_complete_bloody],
	[shaderCut,s_photo_complete_bloody_big,1,1],
	[waitCut,room_speed],
	[shaderCut,s_photo_complete_bloody_big,0,1],
	[talkCut2],
	[freeCut]
	
];