function CollisionCheck(XDir, YDir)
{
	if place_meeting(x + XDir * Movement, y + YDir * Movement, obj_Box)
	{	
		var colliding_box_id = instance_place(x + XDir * Movement, y + YDir * Movement, obj_Box);
		if !place_meeting(x + CalculateMovement(XDir) * 2, y + CalculateMovement(YDir) * 2, obj_Wall) && !place_meeting(x + CalculateMovement(XDir) * 2, y + CalculateMovement(YDir) * 2, obj_Box)
		{
			colliding_box_id.x = colliding_box_id.x + XDir * Movement;
			colliding_box_id.y = colliding_box_id.y + YDir * Movement;
		}else return true;
	}
	if place_meeting(x + CalculateMovement(XDir), y +CalculateMovement(YDir), obj_Wall) || place_meeting(x + CalculateMovement(XDir), y +CalculateMovement(YDir), obj_Door) ||  place_meeting(x + CalculateMovement(XDir), y +CalculateMovement(YDir), obj_MovingWall)
	{
		return true;
	}else return false;
}
function ShouldIstartTime()
{
	if (StopTimeMoves <= 0)
	{
		global.Stoptime = 1;	
	}else StopTimeMoves--;
}
function CalculateMovement(Dir)
{
	return Dir * Movement;
}

if (Counter < 0) {
    if (keyboard_check(vk_left)) {
        direction = 180;
		if (CollisionCheck(-1, 0) = false)
		{
			 x -= Movement;
			 ShouldIstartTime();
		}
		Counter = DefCounter;
    } else if (keyboard_check(vk_right)) {
        direction = 0;
		if (CollisionCheck(1, 0) = false)
		{
			x += Movement;
			ShouldIstartTime();
		}
		Counter = DefCounter;
    } else if (keyboard_check(vk_up)) {
        direction = 90;
		if (CollisionCheck(0, -1) = false)
		{
			y -= Movement;
			ShouldIstartTime();
		}
		Counter = DefCounter;
    } else if (keyboard_check(vk_down)) {
       direction = 270;
		if (CollisionCheck(0, 1) = false)
		{
			y += Movement;
			ShouldIstartTime();
		}
		Counter = DefCounter;
    }
    image_angle = direction;
}
Counter--;
//show_message(Counter);

if (JustChangedSize == 0)
{
	if place_meeting(x, y, obj_MakePlayerBigger)
	{
		if (PlayerSize <= MaxMovesKnow)
		{
			PlayerSize++;
			JustChangedSize = 1;
		}
	}else if place_meeting(x, y, obj_MakePlayerSmaller)
	{
		if (PlayerSize >= 1)
		{
			PlayerSize--;
			JustChangedSize = 1;
		}
		JustChangedSize = 1;	
	}
	//Movement = Movement * PlayerSize;
}
 //def of player size is 2
if (PlayerSize = 1)
{
	image_xscale = 0.5;
	image_yscale = 0.5;
}else if (PlayerSize = 2)
{
	image_xscale = 1;
	image_yscale = 1;
}else if (PlayerSize = 3)
{
	image_xscale = 2;
	image_yscale = 2;
}
	
if !place_meeting(x, y, obj_MakePlayerBigger) && !place_meeting(x, y, obj_MakePlayerSmaller)
{
JustChangedSize = 0;	
}

if place_meeting(x,y,obj_Timer) || (keyboard_check(vk_pagedown) && Cooldown <= 0) //can make it that the player can make it without the timer
{
	/*
	if (x % 32 == 0)
	{
		AmIOnFullBlockX = 32;
	}else AmIOnFullBlockX = 0
	
	
	if (y % 32 == 0)
	{
		AmIOnFullBlockY = 32;
	}else AmIOnFullBlockY = 0
	*/
	
	if (!ds_list_empty(LastXMoves) && !ds_list_empty(LastYMoves))
	{
		x = ds_list_find_value(LastXMoves, 0);// - AmIOnFullBlockX;
		y = ds_list_find_value(LastYMoves, 0);// - AmIOnFullBlockY;
		ds_list_clear(LastXMoves);
		ds_list_clear(LastYMoves);
	}
}else
{
	if (x != xprevious || y != yprevious)
	{
		if (ds_list_size(LastXMoves) >= CanGoXStepsBack)
		{
			ds_list_delete(LastXMoves, 0);
			ds_list_delete(LastYMoves, 0);
		}
		//show_message(ds_list_size(LastXMoves));
		ds_list_add(LastXMoves, x);
		ds_list_add(LastYMoves, y);
	}
}

if (keyboard_check(vk_pageup))
{

	global.BulletTime = 350;
	Cooldown = DefCooldown;
}
if (Cooldown > 0)
{
	Cooldown--;
}
global.BulletTime--;

/*
if (keyboard_check(vk_shift))
{
	if (global.Stoptime == 1)
	{
		global.Stoptime = 0;
	}else
	{
		global.Stoptime = 0;
		StopTimeMoves = 5;
	}
}
*/
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_Large);
draw_text_transformed(x, y + 100, "Hello", .25, .25, 0);



