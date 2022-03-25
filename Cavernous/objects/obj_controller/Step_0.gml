if (keyboard_check_pressed(vk_enter))
{
switch(room)
    {
    case rm_start:
        room_goto(rm_game);
        break;
    case rm_pause:
    case rm_gameover:
        game_restart();
        break;
    }
}

if (keyboard_check_pressed(vk_subtract))
{
	lives = lives - 1;
}

if room = rm_game
{
	if (lives == 0)
	{
		room_goto(rm_gameover);
	}
}

if (global.inframes > 0) {
	global.inframes = global.inframes - 1;
}