/// Create Path
path = path_add();
image_index = choose(0,4,5);
image_speed = 0;


///create small human grid
var cell_width = 8;
var cell_height = 8;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

// Add the walls
mp_grid_add_instances(global.grid, obj_control_center, false);