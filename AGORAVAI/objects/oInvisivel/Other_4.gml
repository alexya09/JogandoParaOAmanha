startClass("turingTumble");

instance_deactivate_object(oLeft);

for (var i = 1; i <= 56; i++) {
    var objIndex = asset_get_index("oLeft_" + string(i));
    if (objIndex != -1) {
        instance_deactivate_object(objIndex);
    }
}

global.rampas_selecionadas = [];

global.rampas_pos = ds_list_create();

for (var i = 1; i <= 50; i++) {
    var objIndex = asset_get_index("oLeft_" + string(i));
    if (objIndex != -1) {
        {
            var info = [id, object_index, x, y];
			ds_list_add(global.rampas_pos, info);

        }
    }
}

global.rampas_corretas = [oLeft, oLeft_1, oLeft_10, oLeft_11,oLeft_12,oLeft_13,oLeft_14,oLeft_15,oLeft_16,oLeft_51];