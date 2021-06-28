switch(state)
{
	case st3.normal:
		
		//fall
		if(!tile_ver_collision(1)) y += 1;
		
		//wall detection
		if(tile_hor_collision(hsp)){
			hsp = -hsp;
		}
		

		//Enemy Collision
		if (place_meeting(x,y, obj_playerTutorial03)){
			
			if(obj_playerTutorial03.y < y-40){
				if(global.audioPlay){
					audio_play_sound(sJumpOnEnemy, 0, 0);
				}
				state = st.hurt;
			}else{
				if(global.audioPlay){
					audio_play_sound(sPlayerHurt, 0, 0);
				}
				with(obj_playerTutorial03){
					if(image_xscale < 0){
						kb_x = 1.5;
					}else{
						kb_x = -1.5;
					}
					state = st3.hurt;
				}
			}
		}
		
		//flip
		image_xscale = sign(hsp);

		if(global.step5 >= 2){
			x += hsp;
		}
		
		
		break;
		
		case st3.hurt:
				sprite_index = sEnemy_died;
				enemy_hurt_time++;
				if(enemy_hurt_time>50){
					sprite_index = sEffect1;
					enemy_died_effect++;
					if(enemy_died_effect>20){
						instance_destroy();
					}
				}		
				
		break;
		
}

