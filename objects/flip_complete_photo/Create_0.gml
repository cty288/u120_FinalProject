event_inherited()



text_info=[
	["PLAYER",g01,"Wait...I hear an unlocking sound somewhere..."]
]

text_info2=[
	["PLAYER",g01,"The photo is full of blood!!!"],
//	["PLAYER",g01,"And look at the wall!"]
]

t_scene_info=[

	[pauseCut],
	[messageCut,"You fliped the photo, and saw its back"],
	[shaderCut,s_photo_complete_back,1,30],
	[waitCut,room_speed],
	[shaderCut,s_photo_complete_back,0,30],
	//unlocking sound
	[talkCut],
	[spriteCut,ophoto_onfloor,s_photo_complete_bloody],
	[shaderCut,s_photo_complete_bloody_big,1,1],
	[waitCut,room_speed],
	[shaderCut,s_photo_complete_bloody_big,0,1],
	[talkCut2],
	[freeCut]
	
];