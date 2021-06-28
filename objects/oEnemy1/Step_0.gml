if(global.pause) exit;
switch(state)
{
	case st.normal:
		
		//fall
		if(!tile_ver_collision(1)) y += 1;
		
		//wall detection
		if(tile_hor_collision(hsp)){
			hsp = -hsp;
		}
		
		//edge detection
		if !place_empty(x - 1,  y, oToRight){
			hsp = -hsp;
		}
		
		if !place_empty(x - 1,  y, oToLeft){
			hsp = -hsp;
		}
		
		if !place_empty(x - 1, y, oBlockParent){
			hsp = -hsp;
		}
		
		//Enemy Collision
		if (place_meeting(x,y, obj_player)){
			
			if(obj_player.y < y-40){
				if(global.audioPlay){
					audio_play_sound(sJumpOnEnemy, 0, 0);
				}
				with(obj_player){
					sprite_index = sp_jumping;
					vsp = -jump_speed;
				}
				state = st.hurt;
			}else{
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
		}
		
		//flip
		image_xscale = sign(hsp);

		x += hsp;
		
		
		break;
		
		case st.hurt:
				sprite_index = sEnemy_died;
				enemy_hurt_time++;
				if(enemy_hurt_time>50){
					sprite_index = sEffect1;
					enemy_died_effect++;
					if(enemy_died_effect>20){
						instance_destroy();
						with(obj_player){
							global.tempScore += 50;
						}
					}
				}		
				
		break;
		
}

