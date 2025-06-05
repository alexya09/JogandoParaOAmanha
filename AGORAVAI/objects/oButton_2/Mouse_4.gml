/// obj_Alavanca – Mouse Left Pressed
if (state == 0)          
{
    state       = 1;
    image_index = 1;     
	
 
        if(obj_placapontos2.pontuacao >= 1)
	{
		 state       = 1;
    image_index = 1;
		instance_create_layer(185,463,"CAIXAA",oBlocksCHAR_1);
		instance_destroy();
	}
}
