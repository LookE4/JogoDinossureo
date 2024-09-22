/// @description Insert description here
if global.dormindo == false {
	x -= abs(global.velocidade/2);
} else {
	x -= 1;
}

if x < -100 {
	instance_destroy();
}