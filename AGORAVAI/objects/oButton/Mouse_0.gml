/// obj_Alavanca – Mouse Left Pressed
if (state == 0)          // só troca se ainda estiver para cima
{
    state       = 1;
    image_index = 1;     // frame “para baixo”

    // ========== Lógica que reseta os blocos ==========
    with (oBlocksINT)
    {
        // Volta cada bloco à posição de origem
        x = xstart;
        y = ystart;

        // Zera variáveis de movimento, se existirem
        if (variable_instance_exists(id, "xspd"))      xspd      = 0;
        if (variable_instance_exists(id, "yspd"))      yspd      = 0;
        if (variable_instance_exists(id, "sliding"))   sliding   = false;
        if (variable_instance_exists(id, "targetX"))   targetX   = x;
        if (variable_instance_exists(id, "targetY"))   targetY   = y;
        
        // Se o bloco também usa uma variável “state”, renomeie‑a
        // para evitar colisão de nomes (ex.: block_state)
    }

    // Se marcou pontos suficientes, destrói a alavanca
    if (obj_placapontos.pontuacao >= 3)
    {
        instance_destroy();
    }
}
