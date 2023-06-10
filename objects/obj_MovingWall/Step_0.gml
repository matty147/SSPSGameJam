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
	if !place_meeting(x + Movement  * XDir, y + Movement * YDir, obj_Wall)
	{
		x = x + Movement * XDir;
		y = y + Movement * YDir;
		//y += Movement;
		Counter = DefCounter;
	}else if place_meeting(x + Movement * XDir, y + Movement * YDir, obj_Wall)
	{
		XDir = XDir * -1;
		YDir = YDir * -1;
	}
}
//show_message(Movement * XDir);
Counter--;
