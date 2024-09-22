if (global.dormindo == false) {
    padrao_obstaculo = irandom(2);

    switch (padrao_obstaculo) {
        case 0: {
            var inst = instance_create_layer(room_width, 140, "Instances", obj_obstaculo);
            inst.image_index = irandom(1);
            break;
        }
        case 1: {
            var yy = -10;
            repeat (2) {
                var inst = instance_create_layer(room_width, 140 + yy, "Instances", obj_obstaculo);
                inst.image_index = 0;
                yy += 10;
            }
            break;
        }
        case 2: {
            var xx = -20;
            repeat (2) {
                var inst = instance_create_layer(room_width + xx, 140, "Instances", obj_obstaculo);
                inst.image_index = 1;
                xx += 20;
            }
            break;
        }
    }

    alarm[0] = irandom_range(room_speed * 1.4, room_speed * 1.8);
}
