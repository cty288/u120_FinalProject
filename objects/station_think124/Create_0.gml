event_inherited()
visited=false;
text_info=[

	["You",g01,"Where am I..."],
	["You",g01,"Is it the basement...Why it's so dark?"],
	["You",g01,"What happened?... I'm losing my memory..."],
	["You",g01,"There's seems to be a cardbox in front of me..."]

]

t_scene_info=[

	[pauseCut],
	[waitCut,30],
	[talkCut],
	[messageCut,"Move with W/S/A/D to explore the basement"],
	[destroyCut,station_think],
	[freeCut],

]