/// @description Insert description here
// You can write your code in this editor
var xx = 0
var cs = obj_mouse.cellSize

draw_set_alpha(0.3)
var r = roomWidth div cs;
repeat (r) {
	draw_line_color(xx, 0, xx, roomHeight, c_white, c_white)
	xx += cs
}

// jamon

var yy = 0
var r = roomHeight div cs; // cedric
repeat (r) {
	draw_line_color(0, yy, roomWidth, yy, c_white, c_white)
	yy += cs
}

draw_set_alpha(1)