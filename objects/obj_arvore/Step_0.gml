/// @description Insert description here
if global.dormindo == false {
	x -= abs(global.velocidade/1.5);
} else {
	x -= 0;
}

if x < -100 {
	instance_destroy();
}