var margin = 100;

var text_width = room_width - margin*2;

char += text_speed;

var str1 = string_copy(text1, 1, char);
var str2 = string_copy(text2, 1, char);
var str3 = string_copy(text3, 1, char);

draw_set_halign(fa_center);

if(global.step7 == 0){
	draw_text_ext(x, y, str1, -1, text_width);
}else if(global.step7 == 1){
	draw_text_ext(x, y, str2, -1, text_width);
}else if(global.step7 == 2){
	draw_text_ext(x, y, str3, -1, text_width);
}
