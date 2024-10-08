//rotate the object
angle += 5; // counter clockwise
effect_create_above(ef_smoke,x,y+10,0.1,c_maroon)
x = O_Player.x + lengthdir_x(120 , angle);
y = O_Player.y + lengthdir_y(120 , angle);
instance_create_layer(x ,y,"Instances",O_Hitbox)
image_xscale = O_Player.image_xscale