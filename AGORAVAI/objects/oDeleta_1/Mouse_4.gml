image_xscale = escala_x * .3;
image_yscale = escala_y * 1.3;

escala_texto_x = .3;
escala_texto_y = 1.3;


if (array_length(global.rampas_selecionadas) > 0)
{
  
    for (var i = 0; i < array_length(global.rampas_selecionadas); i++)
    {
      
        var rampa_id = global.rampas_selecionadas[i];
        
       
        if (instance_exists(rampa_id))
        {
            
            instance_destroy(rampa_id);
        }
    }
    
    global.rampas_selecionadas = [];
    
    show_debug_message("Todas as rampas criadas foram removidas.");
}
else
{
    show_debug_message("Nenhuma rampa para remover.");
}
