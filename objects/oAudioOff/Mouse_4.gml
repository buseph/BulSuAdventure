if(sprite_index == sp_audioOn){
	sprite_index = sp_audioOff;	
	global.audioPlay = false;
	show_debug_message("global.audioPlay false");
}else if(sprite_index == sp_audioOff){
	sprite_index = sp_audioOn;
	global.audioPlay = true;
	show_debug_message("global.audioPlay true");
}
