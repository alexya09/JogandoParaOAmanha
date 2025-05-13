  global.interactKey = keyboard_check(vk_space) || keyboard_check(ord("E"));
  
  global.jogo_pausado = false;
  
  if (!variable_global_exists("tutorial_exibido")) {
    global.tutorial_exibido = false;
}
