// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Resetlevelaftercard()
{
window_set_cursor(cr_none)
O_enemySpawner.spawning = false
O_Player.spd = 9;
O_Controller.enemiestokill = random_range(8,10);
O_Controller.cameraFollow = O_Player;
O_Controller.cardSet = false
}