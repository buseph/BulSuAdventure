
if(global.audioPlay){
	if(playOnce){
	audio_resume_sound(sBG);
	playOnce = false;
	show_debug_message("audio on");
	}
}else{
	if(!playOnce){
	audio_pause_sound(sBG);
	playOnce = true;
	show_debug_message("audio off");
	}
}

