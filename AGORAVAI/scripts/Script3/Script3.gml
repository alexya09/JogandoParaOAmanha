// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Dialogue() constructor {
	_dialogs = [];
	add = function(_sprite,_message, _name){
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message,
			name: _name
		});
	
	pop = function(){
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		return _t;
	}
	
	count = function(){
		return array_length(_dialogs);
	}
}}