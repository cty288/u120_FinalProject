function createScene() {
	//used by trigger mobject to create cutscene with identical info 

	if !instance_exists(ocutscene){
	myscene=instance_create(0,0,ocutscene)
	ocutscene.scene_info=t_scene_info
	ocutscene.text_info=text_info
	ocutscene.text_info2=text_info2
	ocutscene.text_info3=text_info3
	ocutscene.text_info4=text_info4
	ocutscene.text_info5=text_info5
	with ocutscene
	event_perform(ev_other,ev_user0)
	} 


}
