/// @description Insert description here
if global.dormindo == false {
	global.velocidade -= 1/600;
	global.pontos += 1/6;
	layer_hspeed("Background", global.velocidade);
} else {
	global.velocidade = 0;
	layer_hspeed("Background", 0);
}