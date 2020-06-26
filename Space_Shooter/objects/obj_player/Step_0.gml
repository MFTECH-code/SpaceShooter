#region Checanco teclas
left = keyboard_check(vk_left); //  Esquerda
right = keyboard_check(vk_right); // Direita
up = keyboard_check(vk_up); // Cima
down = keyboard_check(vk_down); // Baixo
tiro = keyboard_check_pressed(vk_space); // Espaço
especial = keyboard_check_pressed(ord("Z"));
escudo = keyboard_check_released(ord("X"));
#endregion
#region Movimento
// Forma de movimento bem simples
// Nessa forma precisamos escrever muita linha de código com muitos ifs.
/*
if (left) x -= vel;
if (right) x += vel;
if (up) y -= vel;
if (down) y += vel;
*/

// Movimento mais aperfeiçoado
// Nesse modo não usamos nenhum if.
var velv = (down - up) * vel; // vertical
var velh = (right - left) * vel; // horizontal
x += velh; // aplicando a velocidade
y += velv; // aplicando a velocidade

// Criando limites...
x = clamp(x, 32, room_width - 32);
y = clamp(y, 32, room_height - 32);
#endregion
#region Tiros
if (tiro)
{
	instance_create_layer(x, y,"Player", obj_tiro);
	audio_play_sound(snd_tiro_player, 10, false);
}

else if (energia == 2)
{
	if (especial)
	{
		var t = instance_create_layer(x + 32, y, "Player", obj_tiro2);
		t.hspeed = 4;
		var t = instance_create_layer(x - 32, y, "Player", obj_tiro2);
		t.hspeed = -4;
		energia -= 2;
		
	}
}
else if (energia == 3) // Super tiro
{
	if (especial)
	{
		instance_create_layer(x, y,"Player", obj_tiro);
		var t = instance_create_layer(x + 32, y, "Player", obj_tiro2);
		t.hspeed = 4;
		var t = instance_create_layer(x - 32, y, "Player", obj_tiro2);
		t.hspeed = -4;
		energia -= 3;
	}
}
else if (energia == 4) // Tiro triplo
{
	if (especial) 
	{
		var val = 20; // Diferença dos ângulos
		repeat(3)
		{
			var t = instance_create_layer(x, y, "Player", obj_tiro);
			t.direction = 90 + val;
			t.image_angle = val;
			val -= 20;
		}
		energia -= 4;
	}
}
else if (energia >= 5)
{
	if (especial)
	{
		var t = instance_create_layer(x + 32, y, "Player", obj_tiro2);
		t.hspeed = 4;
		var t = instance_create_layer(x - 32, y, "Player", obj_tiro2);
		t.hspeed = -4;
		var val = 20; // Diferença dos ângulos
		repeat(3)
		{
			var t = instance_create_layer(x, y, "Player", obj_tiro);
			t.direction = 90 + val;
			t.image_angle = val;
			val -= 20;
		}
		energia -= 5;
	}
}

#endregion
#region Vida
if (vida <= 0)
{
	instance_destroy();
}
#endregion
#region Escudo
if (escudo) && (qtd_escudo > 0)
{
	if (energia >= 3)
	{
		instance_create_layer(x, y,"Player",obj_escudo);
		qtd_escudo --;
		energia -= 3;
	}
}
#endregion
