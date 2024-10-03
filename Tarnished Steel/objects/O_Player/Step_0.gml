// inputs
if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
    dir = 0;
    hsp = spd;
	
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
    dir = 1;
    vsp = spd;
}

if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
    dir = 2;
    hsp = -spd;
	
}

if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
    dir = 3;
    vsp = -spd;
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
	//sprite_index = Idle_anim;
}

//this is changing the sprite to move
if(hsp > 0 || hsp < 0) or (vsp > 0 || vsp < 0)
{
	//sprite_index = Walk_Anim;
}
	


//setting rotation of player 
if (hsp !=0)image_xscale = sign(hsp);




// Resetting speed 
hsp = 0;
vsp = 0;

//this will end the game 

if (hp <= 0) {
	room_goto(rm_loseScreen);
}

//this is finding the player location
playerx = x;
playery = y;
	
	
//camera follow
var cam_x = x - camera_get_view_width(view_camera[0])/2
var cam_y = y - camera_get_view_height(view_camera[0])/2

cam_x = clamp(cam_x,0,room_width-camera_get_view_width(view_camera[0]))
cam_x = clamp(cam_x,0,room_height-camera_get_view_height(view_camera[0]))
camera_set_view_pos(view_camera[0],cam_x,cam_y)

