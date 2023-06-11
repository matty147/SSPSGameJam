if (global.BulletTime >= 0 )
{
	SlownDownSpeed = DefSlownDownSpeed;
	//show_message("slow");
}else SlownDownSpeed = 1;

if (Speed <= 0 && global.Stoptime != 0)
{
	var instance = instance_create_depth(x + 54 * XDir, y, 0, obj_Bullet);
	//instance.object_index = obj_Bullet;
	Speed = (DefSpeed / SlownDownSpeed) * global.Stoptime;
	instance.XDir = XDir;
	instance.YDir = YDir;
}
if (global.Stoptime != 0)
{
	Speed--;	
	Speed *= global.Stoptime;
}

