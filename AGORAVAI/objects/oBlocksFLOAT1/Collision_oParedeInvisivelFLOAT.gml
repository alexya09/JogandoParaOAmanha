if(tipoBloco == "float") {
    instance_destroy(other); // libera a passagem
	show_debug_message("PASSOUUUU");
}
else {
	 with (oParedeInvisivelFLOAT) {
            solid = true;
            visible = true;
        }
	 show_debug_message("Bloco inválido bloqueado!");
}

