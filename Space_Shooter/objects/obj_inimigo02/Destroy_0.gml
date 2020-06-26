instance_create_layer(x, y, "Efeitos", obj_explosao01);
// Quando o inimigo for destruido ele ira criar a explosao.

// Ativando o efeito treme:
scr_treme(5, noone, "Efeitos");

var chance = random(100);
if (chance > 15) // Se a chance for maior que 15%
{
	instance_create_layer(x, y, "Efeitos", obj_powerup);
}


