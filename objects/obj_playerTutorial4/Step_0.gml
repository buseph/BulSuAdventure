 switch(state){
   case st.normal:
		hsp = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
		hsp *= 4;

		
		//jump
		var jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
		if(jump && tile_ver_collision(1)) {
			vsp = -jump_speed;
			audio_play_sound(sJump, 0, 0);
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
		}
		
		if(global.step5 >= 1){
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
   
   case st4.hurt:
		sprite_index = spHit;
		
		x += kb_x * kb_speed;
		
		hurt_time++;
		
		if(hurt_time>15 || tile_ver_collision(kb_x * kb_speed)) {
			state = st4.normal;
			hurt_time = 0;
		}
   break;
   
   case st4.dead: 
		sprite_index = spDied;
		
		if(floor(image_index) == image_number - 1){
			image_speed = 0;
			hurt_time++;
			
			if(hurt_time>2){
				instance_destroy();
			}
		}
   break;
}