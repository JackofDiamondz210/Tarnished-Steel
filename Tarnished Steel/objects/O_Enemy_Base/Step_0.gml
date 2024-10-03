// if enemy is overlapping with player then go to deathscreen room, play audio and set the times died.
if(place_meeting(x,y,O_Player)&&(disablepath = false)&&(attackingPlayer = false))
{
	attackingPlayer = true
	disablepath = true
	alarm[1] = random_range(15,25)
}

effect_create_below(ef_smoke,x - 15,y-50,0.1,c_white)
// Get the horizontal distance from the enemy to the player
var horizontal_distance = O_Player.x - x;

// Determine the direction (left or right)
var xdirection = sign(horizontal_distance);

// Set the image_xscale of the enemy sprite
image_xscale = xdirection;

if (hp <= 0)
{
	show_debug_message(hp)
sprite_index = S_Necromancer_Death;
instance_destroy(self)
}