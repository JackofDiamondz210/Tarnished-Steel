
if (coolDown = false)
{
coolDown = true
effect_create_above(ef_firework,x,y+10,0.1,c_maroon)
hp -= 1
alarm[3] = 5
}