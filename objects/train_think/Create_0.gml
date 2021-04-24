event_inherited()

text_info=[

	["YONAKA",y05,"..."],
	["YONAKA",y013,"I gotta get home now..."],
	["YONAKA",y013,"Today's the day brother comes home..."],
	["YONAKA",y013,"So... I have tp gey home quick..."],
	["YONAKA",y013,"It's just been so long..."],
	["YONAKA",y06,"I really miss him..."],

]


t_scene_info=[

	[pauseCut],
	[changeCut,YONAKA,"image_index",6],
	[talkCut],
	[shaderCut,black,1,30],
	[waitCut,15],
	[changeCut,YONAKA,"sprite_index",YONAKA01],
	[changeCut,YONAKA,"image_index",1],
	[changeCut,YONAKA,"image_speed",0],
	[createCut,288,224,choice_sit],
	[shaderCut,black,0,30],
	[messageCut,"Arrow keys: Move Yonaka.#Shift: Speed up while moving.#Space & Enter: Interact.#Esc: Open menu."],
	[freeCut]
	
];