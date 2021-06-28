if(place_meeting(x,y,obj_player)){
	sprite_index = sp_Button;
	with(oBlock2){
		sprite_index = sp_BlockDestroy;		
	}
	animationStart = 1;
}

if(animationStart = 1){
	animation_time++;
	if(animation_time > 30){
		with(oBlock2){
			instance_destroy();
		}
	}
	if(animation_time == 10){
		if(global.audioPlay){
			audio_play_sound(sButton, 0, 0);
		}
	}
}