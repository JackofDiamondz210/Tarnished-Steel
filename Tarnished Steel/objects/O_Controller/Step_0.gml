
//camera follow
var cam_x = O_Player.x - camera_get_view_width(view_camera[0])/2
var cam_y = O_Player.y - camera_get_view_height(view_camera[0])/2


var shake = power(shakeValue,2)*shakePower
cam_x += random_range(-shake,shake)
cam_y += random_range(-shake,shake)

cam_x = clamp(cam_x,0,room_width-camera_get_view_width(view_camera[0]))
cam_x = clamp(cam_x,0,room_height-camera_get_view_height(view_camera[0]))
camera_set_view_pos(view_camera[0],cam_x,cam_y)

if (shakeValue > 0) shakeValue -= 0.1

