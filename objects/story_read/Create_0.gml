event_inherited()

text_info=[

	["???",m01,"Hey. Can't sleep?"],
	["???",m01,"..."],
	["???",m01,"Did you drink the medicine? "],
	["???",m01,"..."],
	["???",m01,"...I see."],
	["???",m01,"It's okay. I'm here."],
	["???",m01,"I hope you get better soon."],
	["???",m01,"...Oh I know."],
	["???",m01,"I'll read you a story today."],
	["???",m01,"Hope you will enjoy."],
	["???",m01,"Well then, let's begin."],

]


t_scene_info=[

	[shaderCut,black,1,30],
	[silentCut,opening],
	[roomCut,storytime],
	[soundCut,story,true],
	[shaderCut,black,0,30],
	[waitCut,15],
	[talkCut],
	[shaderCut,black,1,30],
	[silentCut,story],
	[soundCut,message,false],
	[messageCut,"Once upon a time, there was a high schooler."],
	[messageCut,"Her name was Yonaka."],
	[messageCut,"One day, she took the train."],
	[roomCut,train1],
	[pauseCut],
	[soundCut,train,true],
	[changeCut,YONAKA,"sprite_index",YONAKA06],
	[changeCut,YONAKA,"image_index",6],
	[changeCut,YONAKA,"image_speed",0],
	[shaderCut,black,0,30],
	[createCut,0,0,train_think]
	
];

