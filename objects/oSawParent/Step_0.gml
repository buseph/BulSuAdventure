if (place_meeting(x,y, obj_player)){	
		if(global.audioPlay){
			audio_play_sound(sPlayerHurt, 0, 0);
		}
		with(obj_player){
			if(image_xscale < 0){
				kb_x = 1.5;
			}else{
				kb_x = -1.5;
			}
			state = st.hurt;
	}
}