event_inherited()
text_info=[

	["YONAKA",y01,"........"],
	["YONAKA",y04,"......Ahh!"],
	["YONAKA",y08,"......huh?"],

]

text_info2=[

	["YONAKA",y010,"...Ha?"],

]

text_info3=[

	["YONAKA",y01,"......"],
	["YONAKA",y029,"......Wha?"],
	["YONAKA",y010,"Wh...Hold on...#What...This...Station..."],
	["YONAKA",y030,"...Eh???"],

]

t_scene_info=[
	[pauseCut],
	[changeCut,YONAKA,"state",1],
	[destroyCut,choice_sit],
	[changeCut,YONAKA,"sprite_index",YONAKA05],
	[changeCut,YONAKA,"image_index",0],
	[changeCut,YONAKA,"image_speed",0.2],
	[waitCut,50],
	[changeCut,YONAKA,"image_speed",0],
	[shaderCut,black,1,30],
	[roomCut,train2],
	[silentCut,train],
	[changeCut,YONAKA,"sprite_index",YONAKA06],
	[changeCut,YONAKA,"image_index",0],
	[changeCut,YONAKA,"image_speed",0],
	[shaderCut,black,0,30],
	[changeCut,YONAKA,"image_speed",.2],
	[waitCut,50],
	[changeCut,YONAKA,"image_speed",0],
	[waitCut,30],
	[talkCut],
	[soundCut,train_announce,false],
	[waitCut,60],
	[messageCut,"Last stop... Mogeko!  Mogeko!"],
	[talkCut2],
	[shaderCut,stationboard,1,30],
	[soundCut,intense01,true],
	[talkCut3],
	[changeCut,YONAKA,"sprite_index",YONAKA01],
	[changeCut,YONAKA,"image_speed",0],
	[changeCut,YONAKA,"image_index",1],
	[shaderCut,stationboard,0,30],
	[freeCut]
];
createScene()