if(place_meeting(x,y,obj_player)){
	sprite_index = sp_Button;
	with(oBlock13){
		sprite_index = sp_BlockDestroy;		
	}
	animationStart = 1;
}

if(animationStart = 1){
	animation_time++;
	if(animation_time > 30){
		with(oBlock13){
			instance_destroy();
		}
	}
	if(animation_time == 10){
		audio_play_sound(sButton, 0, 0);
	}
}