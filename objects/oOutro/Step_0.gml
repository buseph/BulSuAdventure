if(timerStart){
	if(instance_exists(obj_main)){
	instance_destroy(obj_main);
	show_debug_message("obj_main destroyed!");
	}
	audio_pause_sound(sBG);
	timer++;
}

if(timer > 5200){
	if(file_exists("save.ini")){
	file_delete("save.ini");
	show_debug_message("save.ini deleted");
	}
	room_goto(rm_menu);
}

