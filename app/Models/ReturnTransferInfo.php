<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ReturnTransferInfo extends Model
{
    public function main_warehouses_table()
    {
        return $this->belongsTo(MainWarehouse::class, 'transfer_to_warehouse_id', 'id');
    }
}
