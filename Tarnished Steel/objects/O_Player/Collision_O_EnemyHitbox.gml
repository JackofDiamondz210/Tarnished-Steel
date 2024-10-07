effect_create_above(ef_firework,x,y+10,0.2,c_maroon)
audio_play_sound(playerhit, 0, 0);
hp -= 1;
O_Controller.shakeValue = 1.9
O_Controller.playerHit = true