if (distance_to_object(camila_player) <= 70 || place_meeting(x, y,camila_player))
{
	if(!dialogo)
	{
		startDialogue("confronto");
		dialogo = true;
	}
}
