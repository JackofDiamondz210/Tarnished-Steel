alarm[10] = 60;
spawn_y = irandom_range(0,room_height);
spawn_x = irandom_range(0,room_width);
spawn_side = irandom_range(0,3);

// Spawn from right side
if (spawn_side == 0)
	{
		instance_create_layer(room_width -100, spawn_y, "Instances", O_Enemy_Base);
	}
// Spawn from left side
else if (spawn_side == 1)
	{
		instance_create_layer(100, spawn_y, "Instances", O_Enemy_Base);
	}
// Spawn from top
else if (spawn_side == 2)
	{
		instance_create_layer(spawn_x, 100, "Instances", O_Enemy_Base);
	}
// Spawn from bottom
else
	{
		instance_create_layer(spawn_x, room_height-100, "Instances", O_Enemy_Base);
	}