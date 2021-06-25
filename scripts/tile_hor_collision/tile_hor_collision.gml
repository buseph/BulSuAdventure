  /// @arg hsp
var side_to_check;
if (argument0 > 0) side_to_check = bbox_right;
else side_to_check = bbox_left;

return tilemap_get_at_pixel(global.tilemap, side_to_check + argument0, bbox_top) || tilemap_get_at_pixel(global.tilemap, side_to_check + argument0, bbox_bottom);