//rotate the object
angle += 5; // counter clockwise

x = O_Player.x + lengthdir_x(120 , angle);
y = O_Player.y + lengthdir_y(120 , angle);
instance_create_layer(x ,y,"Instances",O_Hitbox)