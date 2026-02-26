/*
var interaction_range =10;
var player = instance_nearest(x, y, camila_player); // Substitua "obj_player" pelo nome do objeto do jogador

if (instance_exists(player)) {
    if ((point_distance(x, y, player.x, player.y)) <= interaction_range) {
        player_near = true; // Jogador está próximo
    } else {
        player_near = false; // Jogador está longe
    }
} else {
    player_near = false; // Não há jogador na sala
} 
*/
balloon_x = pos_x;
balloon_y = pos_y;

if (distance_to_object(oParentPlayer) <= 10) {
    if (keyboard_check_pressed(vk_enter)) {
        
        // Verifica se a instância do jogador existe
        if (instance_exists(oParentPlayer)) {
           // oParentPlayer.canMove = false;
        }

        // Verifica se o nome da sala é "Fase1"
        if (room_get_name(room) == "Fase1") {
            startDialogue("dicas");
			//oParentPlayer.canMove = true;
        } 
		else if(global.liberafase3 = true)
		{
			startDialogue("fase2e3");
			//oParentPlayer.canMove = true;
		}
		else if(oGameManager.liberafase2 = true)
		{
			startDialogue("fase1e2");
			//oParentPlayer.canMove = true;
		}
		else if (room_get_name(room) == "Fase0"){
            startDialogue("interacao_carmen");
			//oParentPlayer.canMove = true;
			global.dialogoInicio = true;
        }
		
		else if (room_get_name(room) == "Fase4"){
            startDialogue("fase4_carmen");
        }
		
		else{
			startDialogue("generico_carmen");
		}
		 
    }
}
