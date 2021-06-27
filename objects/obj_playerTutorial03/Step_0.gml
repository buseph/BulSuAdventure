switch(state){
   case st3.normal:
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
		if(global.tLives<=0 || y > room_height){
				state = st3.dead;
		}	
   break;
   
   case st3.hurt:
		sprite_index = spHit;
		
		x += kb_x * kb_speed;
		
		hurt_time++;
		
		if(hurt_time>15 || tile_ver_collision(kb_x * kb_speed)) {
			state = st3.normal;
			hurt_time = 0;
			global.tLives--;
		}
   break;
   
   case st3.dead: 
		sprite_index = spDied;
		
		if(floor(image_index) == image_number - 1){
			image_speed = 0;
			hurt_time++;
			
			if(hurt_time>2){
				instance_destroy();
				global.tLives = 3;
				global.step5 += 1;
			}
		}
   break;
}