////Lives
var draw_x = 300;
var draw_y = 200;

var h_dist = 40;

if(global.step4 == 1 || global.step4 == 2){
	for(var i = 0; i < global.Tlives; i++){
		draw_sprite(spHeart, 0, draw_x + (i*h_dist), draw_y);
	}
}



