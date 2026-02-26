//global.dialogoInicio = true;

comecou = false;

if(oGameManager.liberafase2 == false && global.liberafase3 == false && room_get_name(room) != "Fase4"
&& room_get_name(room) != "Fase3_1" && room_get_name(room) != "Fase2")
{
	startDialogue("inicial2");
}

//oParentPlayer.canMove = false;

instance_destroy();
