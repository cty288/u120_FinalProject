event_inherited()

text_info=[

	["YONAKA",y02,"..."],
	["YONAKA",y08,"...? I feel someone watching..."],

]

text_info2=[

	["YONAKA",y02,"..."],

]

text_info3=[

	["YONAKA",y02,"..."],

]

text_info4=[

	["YONAKA",y02,"?!?!"],
	["YONAKA",y08,"...Eh???"],

]

t_scene_info=[

	[pauseCut],
	[waitCut,30],
	[talkCut],
	[waitCut,20],
	[changeCut,YONAKA,"sprite_index",YONAKA02],
	[changeCut,YONAKA,"image_index",1],
	[changeCut,YONAKA,"image_speed",0],
	[waitCut,30],
	[shaderCut,black,1,30],
	[roomCut,path_forest02],
	[shaderCut,black,0,30],
	[talkCut2],
	[shaderCut,forest_fense02,1,30],
	[waitCut,15],
	[shaderCut,forest_fense02,0,30],
	[talkCut3],
	[shaderCut,black,1,30],
	[roomCut,path_forest],
	[shaderCut,black,0,30],
	[talkCut4],
	[walkCut,YONAKA,2592,288,4],
	[shaderCut,black,1,30],
	[roomCut,path_forest02],
	[shaderCut,black,0,30],
	[waitCut,15],
	[shaderCut,black,1,30],
	[roomCut,path_forest],
	[shaderCut,black,0,30],
	[destroyCut,path_forest_think],
	[freeCut],

]