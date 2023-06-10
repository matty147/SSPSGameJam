var colliding_bullet = instance_place(x + XDir * Movement, y + YDir * Movement, obj_Wall) ||instance_place(x + XDir * Movement, y + YDir * Movement, obj_MovingWall) || instance_place(x + XDir * Movement, y + YDir * Movement, obj_Door);
if (!colliding_bullet)
{
    x += Movement * XDir;
    y += Movement * YDir;
}
else if (colliding_bullet)
{
    instance_destroy(id);
}
var colliding_Box = instance_place(x + XDir * Movement, y + YDir * Movement, obj_Box)
if instance_place(x + XDir * Movement, y + YDir * Movement, obj_Box)
{
 instance_destroy(colliding_Box);	
}

if instance_place(x + XDir * Movement, y + YDir * Movement, obj_Player)
{
		room_restart();
}
