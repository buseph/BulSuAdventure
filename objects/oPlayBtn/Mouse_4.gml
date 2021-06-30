if(global.audioPlay){
	audio_play_sound(sMenuSelect, 1, 0);
}

if(file_exists("save.ini")){
	file_delete("save.ini");
	show_debug_message("save.ini deleted");
}
room_goto_next();