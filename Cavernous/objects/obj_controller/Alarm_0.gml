if (room != rm_game)
{
exit;
}
var xx = choose(irandom_range(32, room_width * 0.3), irandom_range(room_width * 0.7, room_width));
var yy = choose(irandom_range(32, room_height * 0.3), irandom_range(room_height * 0.7, room_height));
if !place_meeting(xx,yy, obj_basicenemy)
{
	instance_create_layer(xx, yy, "bullet", obj_basicenemy);
}	
alarm[0] = i * room_speed;
if i > 0.3 {
	i = i*0.99
}
///show_debug_message(i)
enemynum = enemynum + 1
show_debug_message(enemynum)