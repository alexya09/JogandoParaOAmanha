if (distance_to_object(camila_player) <= 4)
{
	if(!dialogo && oGameManager.liberafase3 == false)
	{
		startDialogue("porta");
		dialogo = true;
	}
}

else{
	dialogo = false;
}