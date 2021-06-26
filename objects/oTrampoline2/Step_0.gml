 
if (place_meeting(x,y, obj_playerTutorial5)){
			
			spriteAnimation = 1;
			global.momentum++;
			if(obj_playerTutorial5.y < y-10){
				with(obj_playerTutorial5){
					sprite_index = sp_jumping;
					vsp = -1 * global.momentum;
				}
				sprite_index = sp_trampolineJump;
						
			}
		}

if(spriteAnimation == 1){
	animationSpeed++;
	if(animationSpeed>30){
		sprite_index = sp_trampoline;
		spriteAnimation = 0;
		animationSpeed = 0;
	}
	if(animationSpeed==1){
		audio_play_sound(sTrampoline, 0, 0);
	}
}
