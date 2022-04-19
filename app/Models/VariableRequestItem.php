<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VariableRequestItem extends Model
{
    public function variable_request_infos_table()
    {
        return $this->belongsTo(VariableRequestInfo::class, 'variable_request_info_id', 'id');
    }

    public function variable_assets_table()
    {
        return $this->belongsTo(VariableAssets::class, 'variable_asset_id', 'id');
    }
}
