// this all of the stuff that we are needing to reset everytime you get a new card.
function Resetlevelaftercard()
{
O_Controller.shakeValue = 2.5
show_debug_message("reset")
window_set_cursor(cr_none)
instance_destroy(PO_Cards)
O_enemySpawner.spawning = false
O_Player.spd = O_Player.realSpd;
O_Controller.enemiestokill = floor(random_range(8,10));
O_Controller.cameraFollow = O_Player;
O_Controller.cardSet = false
O_Controller.pausegame = false
}