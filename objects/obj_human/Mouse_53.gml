/// Create the path and move to the mouse
var mx = (mouse_x div 32)*32+16;
var my = (mouse_y div 32)*32+16;

if (mp_grid_path(global.grid, path, x, y, mx, my, 1))  {
	path_start(path, 2, path_action_stop, false);
}