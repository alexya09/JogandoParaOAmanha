  global.interactKey = keyboard_check(vk_space) || keyboard_check(ord("E"));
  
  global.jogo_pausado = false;
  
  if (!variable_global_exists("tutorial_exibido")) {
    global.tutorial_exibido = false;
}

 if (!variable_global_exists("tutorial2_exibido")) {
    global.tutorial2_exibido = false;
}

if(room_get_name(room) == "Fase1")
{
global.tp_x = 74;
global.tp_y = 319;
global.tp_face = 0;
}



//global.dialogue_topic = topic; // armazena o tópico antes de criar

liberafase2 = false;
//liberafase3 = false;
global.dialogoInicio = false;

global.pontuacao = 0;

global.tutorial_exibido = false;

global.liberafase3 = false;

global.vilao_derrotado = false;

script_execute(scr_actions); 

script_execute(scr_topics);

delay_final = -5;
