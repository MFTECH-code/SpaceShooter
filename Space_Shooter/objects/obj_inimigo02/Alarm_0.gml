if (instance_exists(obj_player))
{
	if (y + 92 < obj_player.y)
	{ 
		instance_create_layer(x, y, "Inimigos", obj_tiro_bola);
	}
}
else
{
	instance_create_layer(x, y, "Inimigos", obj_tiro_bola);
}
alarm[0] = room_speed * random_range(4, 6);


