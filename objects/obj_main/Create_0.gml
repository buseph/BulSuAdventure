 //pause
fade_surf = -1;
fade_alpha = 0;

global.pause = false;

if(instance_exists(obj_load)){
	global.gameLives = obj_load.lives_load;
	global.gameScore = obj_load.score_load;
	global.PlayerTrial = obj_load.trial_load;
	global.level = obj_load.level_load;
	global.tempScore = obj_load.score_load;
	global.highestScore = obj_load.highestScore_load;
	
	instance_destroy(obj_load);
}
