if (sumindo) {
	alpha -= .01;
}
else {
	alpha += .01;
}




// Quandoo alpha atingir o máximo...
if (alpha >= 1) {
	sumindo = true;
	room_goto(destino);
}

if (alpha <= 0 && novaroom == true) { // Quando ficar transparente e estivermos na nova room...
	instance_destroy();
}