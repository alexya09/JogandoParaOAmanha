/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var box = instance_nearest(x, y, o_Box1);


if (box != noone && distance_to_object(box) <= 5)
{
    if (box.tipoBloco == "inteiro")
    {
        o_Points.pontuacao += 1;
        instance_deactivate_object(box);
    }
    else
    {
        show_debug_message("Tipo de bloco inválido para pontuação!");
    }
}