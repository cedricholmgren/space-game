/// @description Insert description here
// You can write your code in this editor
var xx = mouse_x div cellSize;
var yy = mouse_y div cellSize;
xx = xx * cellSize
yy = yy * cellSize
x = xx
y = yy
// Building Vertical road
if (instance_position(x, y, obj_build_v_road) && mouse_check_button_pressed(mb_left)) {
	sprite_index = spr_v_road_build
	building_v_road = true;
}
if (building_v_road = true && mouse_check_button_pressed(mb_left)) {
		instance_create_layer(x - 16, y - 16, rm_game, obj_hallway)
}
if (mouse_check_button_pressed(mb_right)) {
	building_v_road = false;
	sprite_index = spr_blank;
}

// Building Horizontal road
if (instance_position(x, y, obj_build_h_road) && mouse_check_button_pressed(mb_left)) {
	sprite_index = spr_h_road_build
	building_h_road = true;
}
if (building_h_road = true && mouse_check_button_pressed(mb_left)) {
		instance_create_layer(x - 16, y - 16, rm_game, obj_sideways_walkway)
}
if (mouse_check_button_pressed(mb_right)) {
	building_h_road = false;
	sprite_index = spr_blank;
}


if (instance_position(x, y, obj_empty_room) && mouse_check_button_pressed(mb_left)) {
	sprite_index = spr_h_road_build
	building_h_road = true;
}
if (building_h_road = true && mouse_check_button_pressed(mb_left)) {
		instance_create_layer(x - 16, y - 16, rm_game, obj_sideways_walkway)
}
if (mouse_check_button_pressed(mb_right)) {
	building_h_road = false;
	sprite_index = spr_blank;
}