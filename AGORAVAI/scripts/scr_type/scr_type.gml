
function startDialogue(topic) {
	if (instance_exists(obj_textbox))
		return;

	global.dialogue_topic = topic; 

	var inst = instance_create_depth(x, y, -999, obj_textbox);
	inst.setTopic(topic);
}


function type(x, y, text, progress, width) {
    var draw_x = 0;
    var draw_y = 0;

    // Considera padding para que o texto não encoste nas bordas
    var effective_width = width; // width já deve ter descontado padding externo

    for (var i = 1; i <= progress; i++) {
        var char = string_char_at(text, i);

        // Quebra de linha manual
        if (char == "\n") {
            draw_x = 0;
            draw_y += string_height("A");
            continue;
        }

        var char_w = string_width(char);

        // Se a letra atual ultrapassa a largura disponível, pula para a próxima linha
        if (draw_x + char_w > effective_width) {
            draw_x = 0;
            draw_y += string_height("A");
        }

        draw_text(x + draw_x, y + draw_y, char);
        draw_x += char_w;
    }
}



function endDialogue() {
    // Verifica se o obj_textbox existe antes de tentar destruir
    if (instance_exists(obj_textbox)) {
        with (obj_textbox) {
            instance_destroy();
        }
    }
}
