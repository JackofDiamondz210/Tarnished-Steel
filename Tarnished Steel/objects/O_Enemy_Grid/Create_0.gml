//Create Grid 
grid = mp_grid_create(0,0, room_width/16, room_height/16, 16,16);
//add walls to grid 
mp_grid_add_instances(grid,O_Wall,0)