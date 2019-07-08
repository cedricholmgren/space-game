/// @description Insert description here
// You can write your code in this editor
var xx = 0
var cs = obj_grid_test.cellSize

var r = roomWidth div cs;
repeat (r) {
	draw_line_color(xx, 0, xx, roomHeight, c_white, c_white)
	xx += cs
}

var yy = 0
var r = roomHeight div cs;
repeat (r) {
	draw_line_color(0, yy, roomWidth, yy, c_white, c_white)
	yy += cs
}