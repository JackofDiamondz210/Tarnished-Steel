if (disablepath = false)
{
path_delete(path)
path = path_add();

//tell object where to go 
target_x = O_Player.x;
target_y = O_Player.y;

//using grid 
mp_grid_path(O_Enemy_Grid.grid, path, x,y, target_x,target_y, 1);
}
// go on the path 
if (disablepath = false)
{
path_start(path,3,path_action_stop,true);
sprite_index = S_Necromancer_walk;
}
//loop alarm
alarm_set(0,10);