event_inherited()

global.splice_success=true;
text_info=[
		["You",g01,"What a happy family! They were celebrating their little boy’s fifth birthday! Why did they tear the photo?"],
]


t_scene_info=[

	[pauseCut],
	[messageCut,"You put the photo together, the two parts now successfully merged into one piece"],
	[shaderCut,s_photo_complete,1,30],
	[waitCut,room_speed],
	[shaderCut,s_photo_complete,0,30],
	[talkCut],
	[removeInventoryCut,ophoto_mirrored],
	[spriteCut,ophoto_onfloor,s_photo_complete_small],
	[freeCut],
	[endCut]
	
];