image_angle += global.Stoptime;

if place_meeting(x, y, obj_Player)
{
	global.Lvl++;
	if (global.IsLvlHard == 0)
		{
			room_goto_next();
		//room_goto(ds_list_find_value(EasyRooms, global.Lvl));
		}else room_goto(ds_list_find_value(HardRooms, global.Lvl));
}		