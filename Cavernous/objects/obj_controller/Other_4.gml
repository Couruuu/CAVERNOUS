if (room == rm_game)
{
repeat(3)
    {
    var xx = choose(irandom_range(32, room_width * 0.3), irandom_range(room_width * 0.7, room_width));
    var yy = choose(irandom_range(32, room_height * 0.3), irandom_range(room_height * 0.7, room_height));
    instance_create_layer(xx, yy, "bullet", obj_basicenemy);
    } //Spawn three enemies, only in the corner of the room. Prevents enemies from spawning inside player.
alarm[0] = 60; ///After 60 steps, trigger a flag.
}