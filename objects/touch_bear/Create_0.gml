event_inherited()
global.bear_bloddy=true;

text_info=[
	["You",g01,"What happened with the light??!"],
	["You",g01,"OMG the Teddy bear turns bloody!!!"]
]


t_scene_info=[

	[pauseCut],
	[fogDistanceCut,0],
	[waitCut,1*room_speed],
	[fogDistanceCut,200],
	[waitCut,0.5*room_speed],
	[talkCut],
	[freeCut]
	
];
