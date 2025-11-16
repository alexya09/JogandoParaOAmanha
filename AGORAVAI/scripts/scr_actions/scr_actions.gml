#macro TEXT new TextAction
#macro SPEAKER new SpeakerAction 
#macro ARROW new ArrowAction
#macro CHOICE new ChoiceAction
#macro OPTION new OptionAction
#macro GOTO new GotoAction
#macro SET_UI new SetUIAction
#macro IMAGE new ImageAction
#macro IMAGE_FADE_OUT new ImageFadeOutAction
#macro CUTSCENE_TEXT new CutsceneTextAction 

function DialogueAction() constructor {
	act = function() { };
}

// 1. TextAction (Texto Normal, Requer ENTER)
function TextAction(_text) : DialogueAction() constructor {
	text = _text;
    is_cutscene_text = false; // Flag para avanço manual
    
	act = function(textbox) {
        // Chamamos setText com a flag de avanço manual
		textbox.setText(text, is_cutscene_text); 
	}
}

// 2. CutsceneTextAction (Texto Cutscene, Avanço Automático)
function CutsceneTextAction(_text) : DialogueAction() constructor {
	text = _text;
    is_cutscene_text = true; // Flag para avanço automático

	act = function(textbox) {
        // Chamamos setText com a flag de avanço automático
		textbox.setText(text, is_cutscene_text); 
	}
}

// 3. SpeakerAction
function SpeakerAction(_name, _sprite = undefined, _side = undefined): DialogueAction() constructor
{
	name = _name;
	sprite = _sprite;
	side = _side;
	
	act =	function(textbox)
	{
		textbox.speaker_name = name;
		
		if(!is_undefined(sprite))
		{
			textbox.portrait_sprite = sprite;
		}
		
		if(!is_undefined(side))
		{
			textbox.portrait_side = side;
		}
		
		textbox.next();
	}
	
}

// 4. ArrowAction
function ArrowAction(_x, _y, _dir) : DialogueAction() constructor {
    arrow_x = _x;
    arrow_y = _y;
    arrow_dir = _dir;

    act = function(textbox) {
        // Remove seta antiga
        if (object_exists(oTutorialSeta)) {
            if (instance_exists(oTutorialSeta)) {
                instance_destroy(oTutorialSeta);
            }
        }

        // Cria nova seta (a menos que seja -1, -1)
        if (arrow_x != -1) {
            var arrow = instance_create_layer(arrow_x, arrow_y, "UI", oTutorialSeta);
            arrow.dir = arrow_dir;
        }
        
        textbox.next(); // Avança imediatamente após criar/destruir a seta
    }
}

// 5. ChoiceAction
function ChoiceAction(_text) : DialogueAction() constructor {
	text = _text;

	// Fill this array with all the arguments after the first one
	options = [];
	for (var i = 1; i < argument_count; i++)
		array_push(options, argument[i]);

	act = function(textbox) {
		textbox.setText(text); // Aqui, o setText não precisa da flag, pois é uma escolha
		textbox.options = options;
		textbox.option_count = array_length(options);
		textbox.current_option = 0;
	}
}

// 6. OptionAction
function OptionAction(_text, _topic): DialogueAction() constructor {
	text = _text;
	topic = _topic;

	act = function(textbox) {
		textbox.setTopic(topic);
	}
}

// 7. GotoAction
function GotoAction(_topic): DialogueAction() constructor {
	topic = _topic;

	act = function(textbox) {
		textbox.setTopic(topic);
	}
}

// 8. ImageAction (Corrigida: Deve chamar next() para avançar para o texto)
function ImageAction(_sprite, _x = undefined, _y = undefined, _alpha = 1) : DialogueAction() constructor {
	sprite = _sprite;
	img_x = _x;
	img_y = _y;
	img_alpha = _alpha;

	act = function(textbox) {
		textbox.is_fading_image = false; 

		if (sprite == noone) {
			textbox.show_image = false;
			textbox.current_image_sprite = noone;
			textbox.current_image_alpha = 0;
		} else {
			textbox.show_image = true;
			textbox.current_image_sprite = sprite;

			// Define X
			if (is_undefined(img_x)) {
				textbox.current_image_x = textbox.x + textbox.width / 2 - sprite_get_width(sprite) / 2;
			} else {
				textbox.current_image_x = img_x;
			}

			// Define Y
			if (is_undefined(img_y)) {
				textbox.current_image_y = textbox.y + textbox.height / 2 - sprite_get_height(sprite) / 2;
			} else {
				textbox.current_image_y = img_y;
			}
			
			textbox.current_image_alpha = img_alpha;
		}
		
		// VITAL: Avança imediatamente para a próxima ação (que deve ser o CUTSCENE_TEXT)
		textbox.next(); 
	}
}

// 9. SetUIAction
function SetUIAction(_show_box, _show_speaker) : DialogueAction() constructor {
	show_box = _show_box; 		
	show_speaker = _show_speaker; 

	act = function(textbox) {
		textbox.draw_box = show_box;
		textbox.draw_speaker_name = show_speaker;
		
		textbox.next(); // Avança imediatamente após a mudança de UI
	}
}

// 10. ImageFadeOutAction
function ImageFadeOutAction(_speed = 0.05) : DialogueAction() constructor {
	speed = _speed; 

	act = function(textbox) {
		
		if (textbox.show_image) {
			textbox.is_fading_image = true;
			textbox.image_fade_speed = speed;
		}
	
		textbox.next(); // Avança imediatamente após iniciar o fade
	}
}