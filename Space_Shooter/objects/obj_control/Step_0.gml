#region Upando Leveis
if (expa >= expn)
{
	global.level ++; // Upa de level
	expn *= 2; // XP necessario dobrado....
}
#endregion
#region Pontos
if (expa > global.maxpontos) {
	global.maxpontos = expa;
}
#endregion
#region Boss
if (global.level >= 5) && (boss == false)
{
	instance_create_layer(room_width/2, -700, "Inimigos", obj_boss);
	instance_destroy(obj_inimigo01);
	instance_destroy(obj_inimigo02);
	boss = true;
	audio_stop_all();
}
#endregion