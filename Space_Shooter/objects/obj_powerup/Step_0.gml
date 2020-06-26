// Animação do item...
image_angle += v * 10;

if (aumentando)
{
	image_xscale += v;
	image_yscale = image_xscale;
}
if (diminuindo)
{
	image_xscale -= v;
	image_yscale = image_xscale;
}

// Impondo limites no aumento de tamanho

if (image_xscale >= 2)
{
	aumentando = false;
	diminuindo = true;
}
if (image_xscale <= 1)
{
	aumentando = true;
	diminuindo = false;
}