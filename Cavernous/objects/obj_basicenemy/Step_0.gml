if (dead = 0)
{
	image_angle = point_direction(x,y,obj_player.x,obj_player.y)
	direction = image_angle
	speed = 0.666666666
}

if (dead = 1) {
	speed = 0
	image_angle = image_angle + 2
	image_alpha = image_alpha - 0.05
}

if (image_alpha = 0) {
	instance_destroy()
}
