/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Definição de velocidade

var move_speed = 4;

// Pegando a entrada do jogador
var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

// Normalizando a direção para manter velocidade constante na diagonal
if (move_x != 0 || move_y != 0) {
    var length = sqrt(move_x * move_x + move_y * move_y);
    move_x /= length;
    move_y /= length;
}

// Aplicando o movimento
x += move_x * move_speed;
y += move_y * move_speed; 

// DIALOGO

if (distance_to_object(oParentNPC) <= 10)
{
	if(keyboard_check_pressed(ord("E"))){
		var _npc = instance_nearest(x,y,oParentNPC);
		var _dialogo = instance_create_layer(x,y,"Dialogo",oDialogue);
		_dialogo.npc_nome = _npc.nome;
	}
}

