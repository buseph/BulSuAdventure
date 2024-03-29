 
switch(state)
{
	case st4.normal:
		
		//fall
		if(!tile_ver_collision(1)) y += 1;
		
		//wall detection
		if(tile_hor_collision(hsp)){
			hsp = -hsp;
		}
		

		//Enemy Collision
		if (place_meeting(x,y, obj_playerTutorial4)){
			
			if(obj_playerTutorial4.y < y-40){
				audio_play_sound(sJumpOnEnemy, 0, 0);
				with(obj_playerTutorial4){
					sprite_index = sp_jumping;
					vsp = -jump_speed;
				}
				state = st4.hurt;
			}else{
				audio_play_sound(sPlayerHurt, 0, 0);
				with(obj_playerTutorial4){
					if(image_xscale < 0){
						kb_x = 1.5;
					}else{
						kb_x = -1.5;
					}
					state = st4.hurt;
				}
			}
		}
		
		//flip
		image_xscale = sign(hsp);
		

		x += hsp;
	
		break;
		
		case st4.hurt:
				sprite_index = sEnemy_died;
				enemy_hurt_time++;
				if(enemy_hurt_time>50){
					sprite_index = sEffect1;
					enemy_died_effect++;
					if(enemy_died_effect>20){
						instance_destroy();
						global.step5 += 1;
					}
				}		
				
		break;
		
}

