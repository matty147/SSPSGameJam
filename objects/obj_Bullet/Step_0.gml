if (global.BulletTime >= 0 )
{
	Slowness = DefSlowness;
	//show_message("slow");
}else Slowness = 1;

var colliding_bullet = instance_place(x + XDir * Movement * Slowness, y + YDir * Movement * Slowness, obj_Wall) ||instance_place(x + XDir * Movement, y + YDir * Movement, obj_MovingWall) || instance_place(x + XDir * Movement, y + YDir * Movement, obj_Door);
if (!colliding_bullet)
{
    x += Movement * XDir * Slowness;
    y += Movement * YDir * Slowness;
}
else if (colliding_bullet)
{
    instance_destroy(id);
}
var colliding_Box = instance_place(x + XDir * Movement * Slowness, y + YDir * Movement * Slowness, obj_Box)
if instance_place(x + XDir * Movement * Slowness, y + YDir * Movement * Slowness, obj_Box)
{
 instance_destroy(colliding_Box);	
}

if instance_place(x + XDir * Movement * Slowness, y + YDir * Movement * Slowness, obj_Player)
{
		room_restart();
}