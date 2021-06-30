
if(global.audioPlay){
	audio_play_sound(sOnGameMenuSelectSound, 1, 0);
}

global.pause = false;
instance_destroy(obj_dark)
instance_destroy(oPopUpFrame);
instance_destroy(oMenu);
instance_destroy(oGamePaused);


show_debug_message("obj_dark destroyed");
show_debug_message("oPopUpFrame destroyed");
show_debug_message("oMenu destroyed");
show_debug_message("oGamePaused destroyed");

room_restart();

