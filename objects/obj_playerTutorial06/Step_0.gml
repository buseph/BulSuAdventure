switch(state){
   case st.normal:
		hsp = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
		hsp *= 4;
		
		//jump
		var jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
		if(jump && tile_ver_collision(1)) {
			vsp = -jump_speed;
				if(global.audioPlay){
					audio_play_sound(sJump, 0, 0);
				}
		}
			
		//gravity
		if(vsp < 10) vsp += grav;
		
		//movement
		if(tile_hor_collision(hsp)){
			while(!tile_hor_collision(sign(hsp))){
				x += sign(hsp);
			}
			hsp = 0;
		}

		if(tile_ver_collision(vsp)){
			while(!tile_ver_collision(sign(vsp))){
				y += sign(vsp);
			}
			vsp = 0;
			global.momentum = 0;
		}
		
		
		if(global.step8 >= 1){
			x += hsp;	
		}

		y += vsp;
		
		//animation
		if(!tile_ver_collision(1)){
			if(vsp<0){ sprite_index = sp_jumping;}
			else if (vsp>0) {sprite_index = sp_falling;}
		}
		else if(hsp!=0){	
			sprite_index = sp_running;
			if sign(image_xscale) != sign(hsp) image_xscale *= -1;
			
		}else{
			sprite_index = sp_idle;
		} 
		
   break;
   
   
}