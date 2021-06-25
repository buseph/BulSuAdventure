if(sprite_index == sp_SoundOn){
	sprite_index = sp_BtnSoundOff;
	global.mute = true;
}else{
	sprite_index = sp_SoundOn;
	global.mute = false;
}
