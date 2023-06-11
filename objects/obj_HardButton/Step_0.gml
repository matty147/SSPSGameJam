if keyboard_check_released(ord("D"))
{
	 global.IsLvlHard++;
}
	if (global.IsLvlHard % 2 == 0)
	{
		image_index = 0;
	}else image_index = 1;