
if (place_meeting(x, y, oBall)) {

    var correta = true;

    if (array_length(global.rampas_selecionadas) != array_length(global.rampas_corretas)) {
        correta = false;
    } else {
        for (var i = 0; i < array_length(global.rampas_selecionadas); i++) {
            if (!array_contains(global.rampas_corretas, global.rampas_selecionadas[i])) {
                correta = false;
                break;
            }
        }
    }

    if (correta) {
        room_goto(Final); 
    }
	else
	{
		startClass("erro");
	}
}
