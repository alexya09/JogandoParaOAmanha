// Get input
var confirm = keyboard_check_pressed(confirm_key);

// Type out the text
text_progress = min(text_progress + text_speed, text_length);

if (is_fading_image) {
	// Diminui o alfa (opacidade)
	current_image_alpha -= image_fade_speed;
	current_image_alpha = max(0, current_image_alpha); // Garante que não fique negativo
	
	// Quando o fade terminar (alfa chegou a 0)
	if (current_image_alpha == 0) {
		is_fading_image = false;    // Para de fazer o fade
		show_image = false;         // Para de desenhar a imagem
		current_image_sprite = noone; // Limpa o sprite
	}
}

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
/*
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
	if (option_count > 0){
		var up = keyboard_check_pressed(up_key);
		var down = keyboard_check_pressed(down_key);
		//cycle throught availabe optons
		var change = down - up;
		
		if(change != 0)
		{
			current_option += change;
			
			//wrap to firts and last option
			if (current_option < 0)
				current_option = option_count - 1;
			
			else if(current_option >= option_count)
				current_option = 0;
		}
		
		if(confirm)
		{
			var option = options[current_action];
			
			options = [];
			option_count = 0;
			
			option.act(id);
		}
	} 
	
    else if (confirm) {
        next();
    }

}*/

if (text_progress == text_length) {
	if (option_count > 0) {
		var up = keyboard_check_pressed(up_key);
		var down = keyboard_check_pressed(down_key);
		
		// Cycle through available options
		var change = down - up;
		if (change != 0) {
			current_option += change;
		
			// Wrap to first and last option
			if (current_option < 0)
				current_option = option_count - 1;
			else if (current_option >= option_count)
				current_option = 0;
		}
		
		// Select an option!
		if (confirm) {
			var option = options[current_option];
			options = [];
			option_count = 0;
			
			option.act(id);
		}
	}
	else if (confirm) {
		next();
	}
}
else if (confirm) {
	text_progress = text_length;
}