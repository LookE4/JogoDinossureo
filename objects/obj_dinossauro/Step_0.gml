/// @description Insert description here
if global.dormindo == false {
	cima = keyboard_check_pressed(ord("W"));

	if !place_meeting(x, y + 1, obj_parede) {
		//cair
		v_veloc += gravidade;
	
		if v_veloc > 0 {
			caindo = true;
		}
	} else {
		//pular
		if cima {
			v_veloc = pulo;
			audio_play_sound(snd_pulo, 1, false);
		}
	}

	var _inst = instance_place(x, y + v_veloc, obj_parede);
	if _inst {
		while !place_meeting(x, y + sign(v_veloc), obj_parede) {
			y += sign(v_veloc);
		}
		caindo = false;
		v_veloc = 0;
	}

	y += v_veloc;

	//dinossauro morrendo
	if place_meeting(x, y, obj_obstaculo) && global.dormindo == false {
		global.dormindo = true;
		sprite_index = spr_player_morto;
		audio_play_sound(snd_hit, 1, false);
	}
}