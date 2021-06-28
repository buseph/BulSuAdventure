if (place_meeting(x, y, obj_playerTutorial06)){
	//instance_destroy();
	collide = 1;
	sprite_index = sp_coinEffect;
}

if (collide == 1){
	coinEffectAnimation++;
	if(coinEffectAnimation == 30){
		instance_destroy();
	}
	if(coinEffectAnimation == 10){
		if(global.audioPlay){
			audio_play_sound(sCoin, 0, 0);
		}
	}
}

