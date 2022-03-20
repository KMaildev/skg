<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FixedAssets extends Model
{
    public function eng_request_items_table()
    {
        return $this->hasMany(EngRequestItem::class, 'fixed_asset_id', 'id');
    }
}
