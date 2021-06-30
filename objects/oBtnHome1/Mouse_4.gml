if(global.audioPlay){
	audio_play_sound(sOnGameMenuSelectSound, 1, 0);
}

instance_destroy(obj_dark)
instance_destroy(oPopUpFrame);
instance_destroy(oMenu);
instance_destroy(oGamePaused);
instance_destroy(obj_playerVariable);
instance_destroy(oGameOver);
audio_resume_sound(sBG);

if(file_exists("save.ini")){
	file_delete("save.ini");
	show_debug_message("save.ini deleted");
}

show_debug_message("obj_dark destroyed");
show_debug_message("oPopUpFrame destroyed");
show_debug_message("oMenu destroyed");
show_debug_message("oGamePaused destroyed");
show_debug_message("obj_playerVariable destroyed");

room_goto(rm_menu);

