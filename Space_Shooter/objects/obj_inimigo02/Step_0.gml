#region Movimento do inimigo
if (natela == false) && (y >= 0) // Identificando se o inimigo está na tela...
{
	alarm[0] = room_speed * random_range(4, 6);
	natela = true;
}


if (natela == true) //  Se ele estiver na tela...
{
	if (y > room_height / 3) && (movendo == false) //  Se estiver acima de 1/3 da tela
	{
		if (x > room_width / 2) //  Se ela está na direita...
		{
			hspeed = -4;
			movendo = true;
		}
		else
		{
			hspeed = 4;
			movendo = true;
		}
	}
}

#endregion
#region Destruindo 
if (x > room_width + 35) || (x < -35)
{
	instance_destroy();
}

#endregion


