event_inherited()

global.mirror_success=true;

text_info=[
["You",g01,"The photo turns normal!"],
["You",g01,"Maybe now I can joint the two pieces together!"]
]


t_scene_info=[

	[pauseCut],
	[messageCut,"You put the photo in your inventory in front of the washed mirror"],
	[messageCut,"Then the photo is mirrored back to normal!"],
	[talkCut],
	[removeInventoryCut,ophoto_reversed],
	[addInventoryCut,ophoto_mirrored,"A half of normal photo"], 
	[freeCut]
	
];