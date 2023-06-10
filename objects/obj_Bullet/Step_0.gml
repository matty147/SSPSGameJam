var colliding_bullet = instance_place(x + XDir * Movement, y + YDir * Movement, obj_Wall) ||instance_place(x + XDir * Movement, y + YDir * Movement, obj_Box);
if (!colliding_bullet && !place_meeting(x + XDir * Movement, y + YDir * Movement, obj_Box))
{
    x += Movement * XDir;
    y += Movement * YDir;
}
else if (colliding_bullet)
{
    instance_destroy(id);
}

if instance_place(x + XDir * Movement, y + YDir * Movement, obj_Player)
{
		room_restart();
}
