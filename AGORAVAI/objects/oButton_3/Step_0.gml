if(place_meeting(x,y,oBlocksINT) || place_meeting(x,y,oParentPlayer))
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
	if(obj_placapontos2.pontuacao >= 2)
	{
		instance_create_layer(185,463,"CAIXAA",oBlocksBOOL);
		instance_destroy();
	}

}