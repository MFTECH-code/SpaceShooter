#region Estados do Boss
delay ++;
contador ++;
if (contador >= room_speed * 6)
{
	estado = irandom(2);
	contador = 0;
}

if (estado == 3)
{
	if (y < 160)
	{
		y += 5;
	}
	else
	{
		estado = irandom(2);
		contador = 0;
		delay = 0;
		audio_play_sound(snd_musica_fundo2, 5, true);
	}
}
if (estado == 0)
{
	if (delay > 50)
	{

		instance_create_layer(x, y, "Inimigos", obj_tiro_bola);
		delay = 0;
	}
}
if (estado == 1)
{
	if (delay == 50)
	{
		instance_create_layer(x, y, "inimigos", obj_tiro_verde);
	}
	if (delay > 75)
	{

		instance_create_layer(x + 95, y, "inimigos", obj_tiro_verde);
		instance_create_layer(x - 95, y, "inimigos", obj_tiro_verde);
		delay = 0;
	}
	if (move == true)
	{
		x -= 2;
	}
	else
	{
		x += 2;
	}
	if (x > 600)
	{
		move = true;
	}

	if (x < 228)
	{
		move = false;
	}


}
if (estado == 2)
{

	if (delay == 50)
	{
		instance_create_layer(x, y, "inimigos", obj_tiro_bola);
	}
	if (delay > 75)
	{
		instance_create_layer(x + 95, y, "inimigos", obj_tiro_verde);
		instance_create_layer(x - 95, y, "inimigos", obj_tiro_verde);
		delay = 0;
	}
	if (move == true)
	{
		x -= 2;
	}
	else
	{
		x += 2;
	}
	if (x > 600)
	{
		move = true;
	}

	if (x < 228)
	{
		move = false;
	}
}
#endregion

if (vida_boss <= 0)
{
	instance_destroy();
	instance_create_layer(x, y, "Efeitos_2", obj_explosao01);
}
