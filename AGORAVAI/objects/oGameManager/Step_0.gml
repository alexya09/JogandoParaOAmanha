if (keyboard_check_pressed(ord("F"))) { // Substitua 'F' pela tecla desejada
  //  ScriptPlayertoNPC();
}

 if (room_get_name(room) == "Fase2")
 {
	 instance_deactivate_object(camila_player);
 }
 
  if (room_get_name(room) == "Final")
 {
	 instance_deactivate_object(camila_player);
 }
 
  if (room_get_name(room) == "Fase3")
 {
	 instance_deactivate_object(camila_player);
 }
 

if (global.pontuacao == 4) {
    liberafase2 = true;
}

show_debug_message(global.pontuacao);
show_debug_message(liberafase2);


