balloon_x = pos_x;
balloon_y = pos_y;

// 1. PRIMEIRO verificamos se o player existe para evitar crash
if (instance_exists(oParentPlayer)) {
    
    // 2. DEPOIS verificamos a distância
    if (distance_to_object(oParentPlayer) <= 10) {
        
        // 3. SE apertou ENTER
        if (keyboard_check_pressed(vk_enter)) {
            
            var _sala_atual = room_get_name(room); 
			
            if (_sala_atual == "Fase0") {
                startDialogue("interacao_carmen");
                global.dialogoInicio = true;
            }
            else if (_sala_atual == "Fase1") {
                startDialogue("dicas");
            }
            else if (_sala_atual == "Fase4") {
                startDialogue("fase4_carmen");
            }
            
            else if (global.liberafase3 == true) {
                startDialogue("fase2e3");
            }
            else if (oGameManager.liberafase2 == true) {
                startDialogue("fase1e2");
            }
            else {
                startDialogue("generico_carmen");
            }
            
        }
    }
}