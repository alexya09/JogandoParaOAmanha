// Get input
var confirm = keyboard_check_pressed(confirm_key);

// Type out the text
text_progress = min(text_progress + text_speed, text_length);

// Ignore inputs when delay is active
if (input_delay > 0) {
	input_delay--;
	exit;
}

// Are we finished typing? 
/*
if (text_progress == text_length) {
	if (confirm) {
		next();
	}
}
else if (confirm) {
	text_progress = text_length;
} */

// 4) Se ainda não terminou de digitar, ENTER faz skip
if (text_progress < text_length) {
    if (confirm) {
        text_progress = text_length;
    }
    exit;
}

// 5) Texto já terminou (text_progress == text_length)

// 5a) Se for a ÚLTIMA ação do diálogo, ENTER fecha tudo
if (current_action == array_length(actions) - 1) {
    if (confirm) {
        if (instance_exists(oParentPlayer)) {
    oParentPlayer.canMove = true;
}
        if (instance_exists(oTutorialSeta)) instance_destroy(oTutorialSeta);
        instance_destroy();
    }
}

// 5b) Caso contrário, ENTER avança para a próxima fala
else {
    if (confirm) {
        next();
    }
}