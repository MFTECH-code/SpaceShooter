instance_destroy();
instance_create_layer(x, y, "Efeitos_2",obj_explosao02);

// Colisão COM o Player

with(other)
{
	vida --; // Perde 1 de vida
}
