
function src_textos() {
    switch (npc_nome) {
        case "Carmen_npc":
            ds_grid_add_text(textos_grid,"OIIII", Sprite11, 0, "Carmen");
            ds_grid_add_text(textos_grid, "tUDO BEM?????", Sprite11, 0, "Carmen");
            ds_grid_add_text(textos_grid, "SAUDADES", Sprite11, 0, "Carmen");
            ds_grid_add_text(textos_grid, "quem é voce??????", Sprite11, 0, "Camila"); // Corrigido para carmen_portrait
            break;
    }
}

// Função para adicionar uma nova linha à grid

function ds_grid_add_row(_grid) {
    var _new_y = ds_grid_height(_grid);
    ds_grid_resize(_grid, ds_grid_width(_grid), _new_y + 1);
    return _new_y;
} 

/*}
function ds_grid_add_row()
{
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1)
	return ds_grid_height(_grid) -1;
}

*/

// Função para adicionar texto à grid

function ds_grid_add_text(_grid, _texto, _retrato, _lado, _nome) {
    var _y = ds_grid_add_row(_grid);
    _grid[# 0, _y] = _texto;
    _grid[# 1, _y] = _retrato;
    _grid[# 2, _y] = _lado;
    _grid[# 3, _y] = _nome;
}

/*
function ds_grid_add_text()
{
	var _grid = textos_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}

	
// Função para carregar os textos do NPC
