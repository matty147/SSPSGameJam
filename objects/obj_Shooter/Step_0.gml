if (Speed <= 0)
{
	var instance = instance_create_depth(x + 16 * XDir , y, 0, obj_Bullet);
	//instance.object_index = obj_Bullet;
	Speed = DefSpeed;
}
Speed--;