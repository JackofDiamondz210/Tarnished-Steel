// if enemy is overlapping with player then go to deathscreen room, play audio and set the times died.
if(place_meeting(x,y,O_Player)&&(disablepath = false))
{
	
}

// Get the horizontal distance from the enemy to the player
var horizontal_distance = O_Player.x - x;

// Determine the direction (left or right)
var xdirection = sign(horizontal_distance);

// Set the image_xscale of the enemy sprite
image_xscale = xdirection;
