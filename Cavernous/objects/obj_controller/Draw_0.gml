switch (room)
{
case rm_game:
    draw_text(20, 20, "SCORE: " + string(score));
    draw_text(20, 40, "LIVES: " + string(lives)); /// In game, show these on screen
    break;

case rm_start:
	draw_text_transformed_colour(0, 0, "CAVERNOUS", 2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_text(0, 100, 
	@"Fight for as long as you can!

ARROW  KEYS:  move
SPACE:  shoot

>>PRESS  ENTER  TO  START<<");
	draw_set_halign(fa_left);
    break; ///Sets up the main menu

case rm_pause:
    draw_set_halign(fa_center);
    var c = c_lime;
    draw_text_transformed_colour(room_width / 2, 200, "PAUSE", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 300, "PRESS ENTER TO CONTINUE");
    draw_set_halign(fa_left);
    break;

case rm_gameover:
    draw_text_transformed_colour(150,0, "GAME OVER", 2, 2, 0, c_red, c_red, c_red, c_red, 1);
    draw_text(150,100, "FINAL SCORE: " + string(score));
    draw_text(160,200, "PRESS  ENTER  TO  RESTART");
	draw_set_halign(fa_center);
    break;
}