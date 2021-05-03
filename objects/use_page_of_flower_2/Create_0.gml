event_inherited()
global.flower_vessel_opened=true;

text_info=[
	["You",g01,"The page of flower broke the vessel!"],
	["You",g01,"How strange it is!"],
	["You",g01,"But is this key used for unlocking that door?"]
]


t_scene_info=[

	[pauseCut],
	[messageCut,"You fold the page and put it in the vessel, the vessel breaks, you find a key"],
	[addInventoryCut,okey,"Key"],
	[talkCut],
	[freeCut]
	
];
