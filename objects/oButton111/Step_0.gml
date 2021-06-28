if(place_meeting(x,y,obj_playerTutorial06)){
	sprite_index = sp_Button;
	global.momentum = 0;
	with(oBlock111){
		sprite_index = sp_BlockDestroy;		
	}
	animationStart = 1;
}

if(animationStart = 1){
	animation_time++;
	if(animation_time > 30){
		with(oBlock111){
			instance_destroy();
		}
		instance_destroy();
	}
	if(animation_time == 10){
		if(global.audioPlay){
			audio_play_sound(sButton, 0, 0);
		}
	}
}