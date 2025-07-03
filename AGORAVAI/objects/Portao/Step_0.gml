if (distance_to_object(camila_player) <= 4)
{
	if(!dialogo)
	{
		startDialogue("porta");
		dialogo = true;
	}
}

else{
	dialogo = false;
}