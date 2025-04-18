if (tipoBloco != "char") {
    show_debug_message("Bloco inválido bloqueado!");
} else {
    instance_destroy(other); // Ou liberaria a passagem
}
