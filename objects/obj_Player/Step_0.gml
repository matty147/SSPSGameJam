var Movement = 64;
var Counter = 60;

if (Counter < 0) {
    if (keyboard_check(vk_left)) {
        direction = 90;
        x -= Movement;
    }
    else if (keyboard_check(vk_right)) {
        direction = 270;
        x += Movement;	
    }
    else if (keyboard_check(vk_up)) {
        direction = 0;
        y -= Movement;
    }
    else if (keyboard_check(vk_down)) {
        direction = 180;
        y += Movement;
    }
    Counter = 60;
    image_angle = direction;
}

Counter = Counter - 1;