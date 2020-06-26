event_inherited(); // Ele ainda herda os valores de tiro 1
// E pode colocar mais valores no dele msm

// Efeito de tiro ziguezagueando

// Clamp delimita um certo limite...
if (x != clamp(x, xstart-30, xstart+30)) // Se o X não estiver no limite...
{
	hspeed *= -1; // sua hspeed vai ficar negativa
}



