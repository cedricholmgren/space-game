/// @description Insert description here
// You can write your code in this editor
//Makes everything snap to grid
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
	building_h_road = false;
	building_empty_room = false;
}
if (building_v_road = true && mouse_check_button_pressed(mb_left) && !instance_position(x,y, obj_build_v_road)) {
		instance_create_layer(x - 16, y - 16, rm_game, obj_hallway)
}
if (mouse_check_button_pressed(mb_right)) {
	building_v_road = false;
	sprite_index = spr_blank;
}

// Building Horizontal road
	// Pulling up the image to build with
if (instance_position(x, y, obj_build_h_road) && mouse_check_button_pressed(mb_left)) {
	sprite_index = spr_h_road_build
	building_h_road = true;
	building_v_road = false;
	building_empty_room = false;
}
	// Actually building it
if (building_h_road = true && mouse_check_button_pressed(mb_left) && !instance_position(x,y, obj_build_h_road)) {
		instance_create_layer(x - 16, y - 16, rm_game, obj_sideways_walkway)
}
	// Disabling the build
if (mouse_check_button_pressed(mb_right)) {
	building_h_road = false;
	sprite_index = spr_blank;
}

// Building Empty room
if (instance_position(x, y, obj_build_empty_room) && mouse_check_button_pressed(mb_left)) {
	sprite_index = spr_empty_room
	building_empty_room = true;
	building_h_road = false;
	building_v_road = false;
}
if (building_empty_room = true && mouse_check_button_pressed(mb_left) && !instance_position(x,y, obj_build_empty_room)) {
		instance_create_layer(x, y, rm_game, obj_empty_room)
}
if (mouse_check_button_pressed(mb_right)) {
	building_empty_room = false;
	sprite_index = spr_blank;
}
// This is awesome!!!!!!