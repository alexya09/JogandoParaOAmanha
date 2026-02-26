if (distance_to_object(camila_player) <= 2000 || place_meeting(x, y,camila_player))
{
	if(!dialogo && global.dialogoInicio = false)
	{
		//startDialogue("entrada_vilao");
		dialogo = true;
	}
}
//global.dialogoInicio = true;