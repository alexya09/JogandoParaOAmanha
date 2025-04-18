var box = instance_nearest(x, y, o_PushBlocks);


if (box != noone && distance_to_object(box) <= 5)
{
    if (box.tipoBloco == "inteiro")
    {
        obj_placapontos.pontuacao += 1;
        instance_deactivate_object(box);
    }
    else
    {
		x = xstart;
		y = ystart;
        show_debug_message("Tipo de bloco inválido para pontuação!");
    }
}