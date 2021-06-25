if (place_meeting(x, y, obj_player)){
	//instance_destroy();
	collide = 1;
	sprite_index = sp_coinEffect;
	with(obj_player){
		global.tempScore += 9;
	}
}

if (collide == 1){
	coinEffectAnimation++;
	if(coinEffectAnimation == 30){
		instance_destroy();
	}
	if(coinEffectAnimation == 10){
		audio_play_sound(sCoin, 0, 0);
	}
}

