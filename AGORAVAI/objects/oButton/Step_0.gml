if( place_meeting(x,y,oParentPlayer))
{
	state = 1;
	
}
else
{
	state = 0;
}

image_index = state;
	
if(state == 1)
{
	with (oBlocksINT)
	{
		// Resetar posição
		x = xstart;
		y = ystart;

		// Resetar variáveis de movimento
		if (variable_instance_exists(id, "xspd")) xspd = 0;
		if (variable_instance_exists(id, "yspd")) yspd = 0;
		if (variable_instance_exists(id, "sliding")) sliding = false;
		if (variable_instance_exists(id, "targetX")) targetX = x;
		if (variable_instance_exists(id, "targetY")) targetY = y;

		// Opcionalmente: zera startPoint pra evitar movimento "herdado"
		//if (variable_instance_exists(id, "startPointX")) startPointX = x;
		//if (variable_instance_exists(id, "startPointY")) startPointY = y;
	}
}

if(obj_placapontos.pontuacao == 3)
{
	instance_destroy();
}