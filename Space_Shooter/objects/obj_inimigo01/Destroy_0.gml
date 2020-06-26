// Quando o inimigo for destruido ele ira criar a explosao.
instance_create_layer(x, y, "Efeitos", obj_explosao01);
// Ativando o efeito treme:
scr_treme(5, noone, "Efeitos");
// Quando o inimigo morrer ele vai dropar energia...
var chance = random(100);
if (chance > 25) // Se a chance for maior que 15%
{
	instance_create_layer(x, y, "Efeitos", obj_powerup);
}



