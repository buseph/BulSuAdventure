//Lives
var draw_x = 35;
var draw_y = 35;

var h_dist = 40;

for(var i = 0; i < global.gameLives; i++){
	draw_sprite(spHeart, 0, draw_x + (i*h_dist), draw_y);
}

//Score
draw_sprite_ext(sp_coinGui, 0, 35, 74, 1.5, 1.5, 0, c_white, 1);
draw_text(50, 58, string(global.tempScore));
draw_set_font(font0);
draw_set_halign(fa_left);
if(global.level > 2){
	draw_set_colour($FF00A5F0 & $ffffff);
}else{
	draw_set_colour($FFB0F9FF & $ffffff);
}

//Player Trial
for(var i = 0; i < global.PlayerTrial; i++){
	draw_sprite(sp_Trial, 0, 33 + (i*h_dist), 105);
}

