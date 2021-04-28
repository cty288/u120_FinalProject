event_inherited()
global.basement_door_opened=true;

text_info=[
	["You",g01,"The door is opened!"],
	["You",g01,"But why can I only unlock the door with the bloody key?"]
]


t_scene_info=[

	[pauseCut],
	[messageCut,"You opened the door with the bloody key"],
	[talkCut],
	[freeCut]
	
];
