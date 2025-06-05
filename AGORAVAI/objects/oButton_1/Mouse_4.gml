/// obj_Alavanca – Mouse Left Pressed
if (state == 0)          
{
    state       = 1;
    image_index = 1;     
	
 
        if(obj_placapontos.pontuacao >= 1)
	{
		 state       = 1;
    image_index = 1;
		instance_create_layer(185,686,"CAIXAA",oBlocksCHAR);
		instance_destroy();
	}
}
