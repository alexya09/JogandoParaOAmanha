if (keyboard_check_pressed(ord("F"))) { // Substitua 'F' pela tecla desejada
  //  ScriptPlayertoNPC();
}

 if (room_get_name(room) == "Fase2")
 {
	 instance_deactivate_object(camila_player);
 }
 
  if (room_get_name(room) == "entre1e0")
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
 
   if (room_get_name(room) == "Fase3_1")
 {
	 instance_deactivate_object(camila_player);
 }
 
   if (room_get_name(room) == "entre0e2")
 {
	 instance_deactivate_object(camila_player);
 }
 
    if (room_get_name(room) == "entre2e0")
 {
	 instance_deactivate_object(camila_player);
 }
 
    if (room_get_name(room) == "entre1e0")
 {
	 instance_deactivate_object(camila_player);
 }
 

if (global.pontuacao == 4) {
    liberafase2 = true;
	//global.dialogoInicio = true;
}

//if (obj_demo.inicio == true) {
  //  global.dialogoInicio = true;
//}

//show_debug_message(global.pontuacao);
//show_debug_message(liberafase2);

if (global.vilao_derrotado)
{
    show_debug_message("VILAO DERROTADO → spawnando Boss2");

    global.vilao_derrotado = false; // evita executar de novo

    instance_create_layer(211, 32, "Players", Boss2);

    if (instance_exists(Boss)) {
        with (Boss) instance_destroy();
    }

    delay_final = room_speed * 5; 
}



if (delay_final > 0)
{
    delay_final--;

    if (delay_final == 0)
    {
        room_goto(Final);
    }
}

