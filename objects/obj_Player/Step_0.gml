function CollisionCheck(XDir, YDir)
{
	if place_meeting(x + XDir * Movement, y + YDir * Movement, obj_Box)
	{	
		var colliding_box_id = instance_place(x + XDir * Movement, y + YDir * Movement, obj_Box);
		//show_message(colliding_box_id)
		if !place_meeting(x + XDir * Movement * 2, y + YDir * Movement * 2, obj_Wall) && !place_meeting(x + XDir * Movement * 2, y + YDir * Movement * 2, obj_Box)
		{
			colliding_box_id.x = colliding_box_id.x + XDir * Movement;
			colliding_box_id.y = colliding_box_id.y + YDir * Movement;
			//show_message("I fucking moved!!!");
		}else return true;
	}
	if place_meeting(x + XDir * Movement, y + YDir * Movement, obj_Wall)
	{
		return true;
	}else return false;
}
if (Counter < 0) {
    if (keyboard_check(vk_left)) {
        direction = 90;
		if (CollisionCheck(-1, 0) = false)
		{
			 x -= Movement;
		}
		Counter = DefCounter;
    } else if (keyboard_check(vk_right)) {
        direction = 270;
		if (CollisionCheck(1, 0) = false)
		{
			x += Movement;
		}
		Counter = DefCounter;
    } else if (keyboard_check(vk_up)) {
        direction = 0;
		if (CollisionCheck(0, -1) = false)
		{
			y -= Movement;
		}
		Counter = DefCounter;
    } else if (keyboard_check(vk_down)) {
        direction = 180;
		if (CollisionCheck(0, 1) = false)
		{
			y += Movement;
		}
		Counter = DefCounter;
    }
    image_angle = direction;
}
Counter--;
//show_message(Counter);








