<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ReturnItem extends Model
{
    public function fixed_assets_table()
    {
        return $this->belongsTo(FixedAssets::class, 'fixed_asset_id', 'id');
    }

    public function return_qs_team_check_passes_table()
    {
        return $this->belongsTo(ReturnQsTeamCheckPass::class, 'id', 'return_item_id');
    }

    
}
