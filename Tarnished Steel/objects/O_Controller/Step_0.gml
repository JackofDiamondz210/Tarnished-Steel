
//camera follow

var cam_x = cameraFollow.x - camera_get_view_width(view_camera[0])/2
var cam_y = cameraFollow.y - camera_get_view_height(view_camera[0])/2


var shake = power(shakeValue,2)*shakePower
cam_x += random_range(-shake,shake)
cam_y += random_range(-shake,shake)

//figuring out how to get this to work at this moment.
//cam_y = clamp(cam_y,0,room_width-camera_get_view_width(view_camera[0])/2)
//cam_x = clamp(cam_x,0,room_height-camera_get_view_height(view_camera[0])/2)
camera_set_view_pos(view_camera[0],cam_x,cam_y)

if (shakeValue > 0) shakeValue -= 0.1

if(enemiestokill <= 0)
{
SetCardCreation();	
}

