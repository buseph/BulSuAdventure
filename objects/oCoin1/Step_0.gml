if (place_meeting(x, y, obj_playerTutorial2)){
	//instance_destroy();
	collide = 1;
	sprite_index = sp_coinEffect;
	with(obj_playerTutorial2){
		global.tutorialScore += 9;
	}
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

