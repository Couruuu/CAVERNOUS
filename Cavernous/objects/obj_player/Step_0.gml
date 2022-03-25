/// Movement

if (keyboard_check(vk_up))
{
	if place_free(x, y-1.5)
	{
		y = y - 1.5
	}
	image_angle = 0;
}


if (keyboard_check(vk_down))
{
	if place_free(x, y+1.5)
	{
		y = y + 1.5
	}
	image_angle = 180;
}


if (keyboard_check(vk_right))
{
	if place_free(x+1.5, y)
	{
		x = x + 1.5
	}
	image_angle = 270;
}


if (keyboard_check(vk_left))
{
	if place_free(x-1.5, y)
	{
		x = x - 1.5
	}
	image_angle = 90;
}

/// Firing

if (keyboard_check_pressed(vk_space))
{
var bullet = instance_create_layer(x, y, "bullet", obj_bullet);
bullet.direction = image_angle-270;
}

if (global.inframes > 0)
{
	image_alpha = 0.5
}

if (global.inframes == 0)
{
	image_alpha = 1
}


