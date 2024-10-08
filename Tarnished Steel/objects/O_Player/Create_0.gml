//Setting the direction the player is going 
dir = 0;

hp = 100;
maxHP = 100;
hp_time = .1;
defense = 50;

atk_speed = .1;
atk_damage = 10;
atk_size = 10;

size = 1;
image_xscale = size
image_yscale = size

vision = 0;
pickup_effectiveness = 1;

//Speed of the player
spd = 9;

// Initialize speed variables
vsp = 0;
hsp = 0;
attacklocationx = 65
attacklocationy = 25
playerx = x
playery = y
//we are setting the cursor to none when the player is on screen 
window_set_cursor(cr_none)

ableToMove = true;

spinningAbility = true;

//Abilities
if (spinningAbility = true)
{
	var spinningAbility1 = instance_create_layer(x,y,layer,O_spinningAbility);
		spinningAbility1.angle = 0;
		
	var spinningAbility2 = instance_create_layer(x,y,layer,O_spinningAbility);
		spinningAbility2.angle = 90;
		
	var spinningAbility3 = instance_create_layer(x,y,layer,O_spinningAbility);
		spinningAbility3.angle = 180;
		
	var spinningAbility4 = instance_create_layer(x,y,layer,O_spinningAbility);
		spinningAbility4.angle = 270;
	
}

CardCreation(0, 1, 2);

alarm[0] = hp_time;
