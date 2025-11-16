dialogo = false;

if (global.dialogoInicio = true) {
    instance_destroy(); // se já foi exibido, destrói o objeto
} else {
    global.dialogoInicio = true; // marca como exibido
}