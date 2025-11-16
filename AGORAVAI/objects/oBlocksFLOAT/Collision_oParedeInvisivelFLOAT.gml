if(tipoBloco == "float") {
    instance_destroy(other); // libera a passagem
}
else {
	 with (oParedeInvisivelFLOAT) {
            solid = true;
            visible = true;
        }
	 show_debug_message("Bloco inválido bloqueado!");
}

