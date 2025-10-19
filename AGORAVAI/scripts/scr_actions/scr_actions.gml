#macro TEXT new TextAction
#macro SPEAKER new SpeakerAction 
#macro ARROW new ArrowAction

function DialogueAction() constructor {
	act = function() { };
}

// Define new text to type out
function TextAction(_text) : DialogueAction() constructor {
	text = _text;

	act = function(textbox) {
		textbox.setText(text);
	}
}

//set the speaker optionally its portrait and side the portrait is on
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

        // ❌ não chama textbox.next() aqui!
        // deixa o jogador avançar normalmente
    }
}

