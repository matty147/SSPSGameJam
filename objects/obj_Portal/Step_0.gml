image_angle++;

if place_meeting(x, y, obj_Player)
{
	if (global.IsLvlHard == 0)
	{
	room_goto(ds_list_find_value(EasyRooms, Lvl));
	}else room_goto(ds_list_find_value(HardRooms, Lvl));
	Lvl++;
}