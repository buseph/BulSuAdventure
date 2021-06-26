//Lives
var draw_x = 320;
var draw_y = 290;

var h_dist = 40;

if(global.step5 == 1 || global.step5 == 2){
	for(var i = 0; i < global.tLives; i++){
	draw_sprite(spHeart, 0, draw_x + (i*h_dist), draw_y);
	}
}


