var draw_x = 320;
var draw_y = 240;

var h_dist = 40;


//Player Trial
if(global.step5 >= 3){
	for(var i = 0; i < global.PlayerTrial; i++){
		draw_sprite(sp_Trial, 0, draw_x + (i*h_dist), draw_y);
	}
}
