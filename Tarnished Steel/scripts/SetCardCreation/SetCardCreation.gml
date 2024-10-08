// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetCardCreation()
{
O_Controller.shakeValue = 2.5
audio_play_sound(CardPicked, 0, 0);
window_set_cursor(cr_arrow)
O_enemySpawner.spawning = true
instance_destroy(O_Enemy_Base)
O_Player.spd = 0;
O_Controller.enemiestokill = 0
O_Controller.cameraFollow = O_Cardcontroller;
O_Controller.cardSet = true;
}