if(global.audioPlay){
	audio_play_sound(sMenuSelect, 1, 0);
}

ini_open("save.ini");

var load = instance_create_layer(0, 0, "Instances", obj_load);

var room_load = ini_read_real("save", "room", rm_menu);
var lives_load = ini_read_real("save", "lives", 3);
var score_load = ini_read_real("save", "score", 0);
var trial_load = ini_read_real("save", "trial", 3);
var level_load = ini_read_real("save", "level", 0);
var highestScore_load = ini_read_real("save", "highestScore", 0);

room_goto(room_load);
load.lives_load = lives_load;
load.score_load = score_load;
load.trial_load = trial_load;
load.level_load = level_load;
load.highestScore_load = highestScore_load;

ini_close();

global.pause = false;
	