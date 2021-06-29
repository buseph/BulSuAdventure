
if(global.audioPlay){
	if(global.pause){
		audio_pause_sound(sBG);
		exit;
	}else{
		audio_resume_sound(sBG);
	}
}


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
		
		x += hsp;
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
		
		//died
		if(global.PlayerTrial != -1){
			if(global.gameLives<=0 || y > room_height){
				state = st.dead;
			}
		}else{
			instance_destroy();
			global.gameOver = true;
		}
		
		//collision with the box
		if(place_meeting(x - 10,y,oBlockParent)){
			x += 5;
		}
		if(place_meeting(x + 10,y,oBlockParent)){
			x += -5;
		}
		if(place_meeting(x,y - 10,oBlockParent)){
			y += 5;
			global.momentum -= 1;
		}
		if(place_meeting(x,y+10,oBlockParent)){
			y += -5;
			global.momentum -= 1;
		}
   break;
   
   case st.hurt:
		sprite_index = spHit;
		
		x += kb_x * kb_speed;
		
		hurt_time++;
		
		if(hurt_time>15 || tile_ver_collision(kb_x * kb_speed)) {
			state = st.normal;
			hurt_time = 0;
			global.gameLives--;
		}
   break;
   
   case st.dead: 
		sprite_index = spDied;
		
		if(floor(image_index) == image_number - 1){
			image_speed = 0;
			hurt_time++;
			
			if(hurt_time>2){
				room_restart();	
				global.tempScore = global.gameScore;
				global.PlayerTrial--;
				global.gameLives = 3;
			}
		}
   break;
}