  global.interactKey = keyboard_check(vk_space) || keyboard_check(ord("E"));
  
  global.jogo_pausado = false;
  
  if (!variable_global_exists("tutorial_exibido")) {
    global.tutorial_exibido = false;
}

 if (!variable_global_exists("tutorial2_exibido")) {
    global.tutorial2_exibido = false;
}

//global.dialogue_topic = topic; // armazena o tópico antes de criar

liberafase2 = false;
global.dialogoInicio = false;

global.pontuacao = 0;

global.liberafase3 = false;

global.vilao_derrotado = false;

script_execute(scr_actions); 

script_execute(scr_topics);

delay_final = -5;
