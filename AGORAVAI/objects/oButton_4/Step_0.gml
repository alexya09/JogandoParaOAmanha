if(ativa == 0)
{
	if (distance_to_object(oParentPlayer) <= 25) 
	{
	    if (keyboard_check_pressed(vk_enter)) 
		{
			if (state == 0)          
			{
			    state = 1;
			    image_index = 1;
				ativa = 1;

			      if(obj_placapontos3.pontuacao = 1 && !instance_exists(oBlocksBOOL_1))
				{
					instance_create_layer(185,236.5,"CAIXAA",oBlocksBOOL_1);
					//instance_destroy();
				}
				  if(obj_placapontos3.pontuacao = 3 && !instance_exists(oBlocksFLOAT))
				{
					instance_create_layer(185,236.5,"CAIXAA",oBlocksFLOAT);
				}
					if(obj_placapontos3.pontuacao = 2 && !instance_exists(oBlocksCHAR_2))
				{
					instance_create_layer(185,236.5,"CAIXAA",oBlocksCHAR_2);
				}
				
			}
		}
	}
}