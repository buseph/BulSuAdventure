//pause
fade_surf = -1;
fade_alpha = 0;

global.pause = false;

global.tempScore = 0;
lives = 3;
score = 0;
global.level = 0;
global.PlayerTrial = 3;

if(instance_exists(obj_load)){
	lives = obj_load.lives_load;
	score = obj_load.score_load;
	global.PlayerTrial = obj_load.trial_load;
	
	instance_destroy(obj_load);
}
