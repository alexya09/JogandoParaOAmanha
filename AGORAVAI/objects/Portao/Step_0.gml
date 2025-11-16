if (distance_to_object(camila_player) <= 4)
{
	if(!dialogo && global.liberafase3 == false)
	{
		startDialogue("porta");
		dialogo = true;
	}
}

else{
	dialogo = false;
}