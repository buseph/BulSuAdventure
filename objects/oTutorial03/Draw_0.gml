var margin = 100;

var text_width = room_width - margin*2;

char += text_speed;

var str1 = string_copy(text1, 1, char);

draw_set_halign(fa_center);

draw_text_ext(x, y, str1, -1, text_width);
