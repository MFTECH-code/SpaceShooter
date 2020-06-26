x = obj_player.x;
y = obj_player.y;

// Vida do escudo
if (vida_escudo <= 0)
{
	instance_destroy();
}
if (vida_escudo == 3)
{
	image_index = 2;
}
if (vida_escudo == 2)
{
	image_index = 1;
}
if (vida_escudo == 1)
{
	image_index = 0;
}