if (global.BulletTime >= 0 )
{
	SlownDownSpeed = DefSlownDownSpeed;
	//show_message("slow");
}else SlownDownSpeed = 1;

if (Counter <= 0)
{
	if place_meeting(x + Movement * XDir, y + Movement * YDir, obj_Player)
	{
		if !place_meeting(x + XDir * Movement * 2, y + YDir * Movement * 2, obj_Wall) 
		{
			obj_Player.x += Movement * XDir;	
			obj_Player.y += Movement * YDir;
		}else room_restart();
	}
	var colliding_Moving_Wall_id = instance_place(x + XDir * Movement, y + YDir * Movement, obj_Box);
	if place_meeting(x + Movement  * XDir, y + Movement * YDir, obj_Box)
	{
		if !place_meeting(x + XDir * Movement * 2, y + YDir * Movement * 2, obj_Wall) && !place_meeting(x + XDir * Movement * 2, y + YDir * Movement * 2, obj_Player) && !place_meeting(x + XDir * Movement * 2, y + YDir * Movement * 2, obj_Wall) && !place_meeting(x + XDir * Movement * 2, y + YDir * Movement * 2, obj_Player) && !place_meeting(x + XDir * Movement * 2, y + YDir * Movement * 2, obj_Box)
		{
			colliding_Moving_Wall_id.x += Movement * XDir;	
			colliding_Moving_Wall_id.y += Movement * YDir;
		}else instance_destroy(colliding_Moving_Wall_id);
	}
	if !place_meeting(x + Movement  * XDir, y + Movement * YDir, obj_Wall)
	{
		x = x + Movement * XDir;
		y = y + Movement * YDir;
		//y += Movement;
		Counter = DefCounter / SlownDownSpeed;
		//show_message(Counter);
	}else if place_meeting(x + Movement * XDir, y + Movement * YDir, obj_Wall)
	{
		XDir = XDir * -1;
		YDir = YDir * -1;
	}
}
//show_message(Movement * XDir);
Counter--;
