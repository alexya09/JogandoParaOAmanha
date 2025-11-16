if(tipoBloco == "bool") {
    instance_destroy(other); // libera a passagem
}
else {
	 with (oParedeInvisivelBOOL) {
            solid = true;
            visible = true;
        }
	 show_debug_message("Bloco inválido bloqueado!");
}

