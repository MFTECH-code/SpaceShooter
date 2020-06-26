if (boss == false)
{
	var repete = irandom_range(2, 6) * global.level; // Ele cria mais comforme maior o seu level

	repeat (repete) // Vai repetir a criação de 2 a 6 vezes...
	{
		var chance = random(10) * global.level; // Comforme o level aumenta a probabilidade também aumenta
		if (chance > 25) //  Se a probabilidade for maior q 25% ele cria o inimigo 2
		{
			var inimigo = instance_create_layer(irandom_range(32, 768), irandom_range(-51, -1024), "Inimigos", obj_inimigo02); // Ele cria o inimigo 2
			inimigo.speed = random_range(2, 4);
		}
		else
		{
			var inimigo = instance_create_layer(irandom_range(32, 768), irandom_range(-51, -1024), "Inimigos", obj_inimigo01); // Ele cria o inimigo 1
			inimigo.speed = random_range(3, 5);
		}
	}

	alarm[0] = (irandom_range(2, 12) * room_speed); 
}
