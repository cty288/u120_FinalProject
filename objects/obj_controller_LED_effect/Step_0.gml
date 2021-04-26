if keyboard_check(ord("Q")) var_led_size += 1;
if keyboard_check(ord("A")) var_led_size -= 1;

if keyboard_check(ord("W")) var_led_brightness += 0.01;
if keyboard_check(ord("S")) and var_led_brightness > 0.5 var_led_brightness -= 0.01;

