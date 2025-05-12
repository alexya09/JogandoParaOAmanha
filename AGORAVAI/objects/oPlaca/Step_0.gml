if (distance_to_object(oParentPlayer) <= 50) {
    if (keyboard_check_pressed(ord("E"))) {
		placa = true;
		oParentPlayer.canMove = false;
    }
}
/*
if (acabouTexto && keyboard_check_pressed(ord("E"))) {
    placa = false;
    oParentPlayer.canMove = true;
}*/
