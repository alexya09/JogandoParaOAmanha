
// Alterna o estado de todas as instâncias relevantes
	with (carmen_player) state_char = (state_char == PLAYER) ? NPC : PLAYER;
	with (camila_player) state_char = (state_char == PLAYER) ? NPC : PLAYER;
    
    // Opcional: prevenir trocas rápidas consecutivas
    alarm[0] = 30; // Espera 30 frames antes de permitir nova troca
