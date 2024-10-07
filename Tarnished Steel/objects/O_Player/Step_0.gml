// inputs
if (ableToMove = true)
{
if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
    dir = 0;
    hsp = spd;
	attacklocationx = 65
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
    dir = 1;
    vsp = spd;
	attacklocationy = -25
}

if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
    dir = 2;
    hsp = -spd;
	attacklocationx = -65
	
}

if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
    dir = 3;
    vsp = -spd;
	attacklocationy = 25
	
}
}




// checking if player 
// Horizontal collision 
if (place_free(x + hsp, y)){
    x += hsp;
}

// Vertical collision 
if (place_free(x, y + vsp)){
    y += vsp;
}

//this is changing the sprite to idle
if(vsp = 0) and (hsp = 0)
{
	sprite_index = Idle_Player;
}

//this is changing the sprite to move
if(hsp > 0 || hsp < 0) or (vsp > 0 || vsp < 0)
{
	sprite_index = Moving_Player;
	effect_create_above(ef_smoke,x,y+10,0.1,c_gray)
	
}
	
if(keyboard_check(ord("Q")))
{
	sprite_index = Attack_Player;
	instance_create_layer(x + attacklocationx,y + attacklocationy,"Instances",O_Hitbox)
	O_Controller.shakeValue = 0.5
	ableToMove = false;

}
else
{
ableToMove = true;	
}

//setting rotation of player 
if (hsp !=0)image_xscale = sign(hsp)*size;
//this is setting the player size
image_yscale = size

// Resetting speed 
hsp = 0;
vsp = 0;

//this will end the game 
if (hp <= 0) {
	room_goto(rm_menu);
}

//this is finding the player location
playerx = x;
playery = y;

//checking player size 




