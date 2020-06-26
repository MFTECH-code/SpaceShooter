
if (y > 32)
{
	instance_create_layer(x, y, "Inimigos", obj_tiro_verde);
}
alarm[0] = room_speed * random_range(2, 4);
