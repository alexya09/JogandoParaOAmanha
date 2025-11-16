if (distance_to_object(camila_player) <= 100 || place_meeting(x, y, camila_player))
{
        if (!dialogo)
{
    oParentPlayer.canMove = false;

    var box = startDialogue("confronto");

    dialogo = true;

    obj_textbox.dialogue_end_callback = function() {
        global.vilao_derrotado = true;
        oParentPlayer.canMove = true;
    };
}

    };
