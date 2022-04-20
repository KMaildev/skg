<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VariableLogisticsTeamSend extends Model
{
    public function main_warehouses_table()
    {
        return $this->belongsTo(MainWarehouse::class, 'transfer_from_warehouse_id', 'id');
    }
}
