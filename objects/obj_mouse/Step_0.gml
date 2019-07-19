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
//Codename: Qcode; All of this crap gets really long because otherwise it places buildings under the build menu, hwever you dont need to keep adding objects if those said objects are above the current object you are working on just to give a reference for why this is such a mess: If you are still reading at this point, good job. -Cedric
if (
	(
		building_v_road == true
		&& mouse_check_button_pressed(mb_left)
		&& !instance_position(x,y, obj_build_v_road)
		&& !instance_position(x,y, obj_build_h_road)
		&& !instance_position(x,y, obj_build_empty_room)
	)
	&& /*SO MUCH CODE: this part past here restricts where the player can build --->*/
	(
		instance_position(x, y - 17, obj_build_command)
		|| instance_position(x, y + 17, obj_build_command)
		&& !instance_position(x, y, obj_build_command)
	)
) {
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
	//Qcode
if (
	building_h_road = true 
	&& mouse_check_button_pressed(mb_left) 
	&& !instance_position(x,y, obj_build_h_road)
	&& !instance_position(x,y, obj_build_h_road)
	&& !instance_position(x,y, obj_build_empty_room )
	&&
	(
	instance_position(x - 17, y, obj_build_command)
	|| instance_position(x + 17, y, obj_build_command)
	&& !instance_position(x, y, obj_build_command)
	)
	) {
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
//Qcode
if (
	building_empty_room = true 
	&& mouse_check_button_pressed(mb_left) 
	&& !instance_position(x,y, obj_build_empty_room)
	) {
		instance_create_layer(x, y, rm_game, obj_empty_room)
}
if (mouse_check_button_pressed(mb_right)) {
	building_empty_room = false;
	sprite_index = spr_blank;
}
// This is awesome!!!!!!