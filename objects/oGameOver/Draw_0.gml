if(global.gameOver){
	draw_text(360, 320, "SCORE");
	draw_text(360, 355, string(global.gameScore));
	draw_set_font(fontTutorial);
	draw_set_halign(fa_center);
}