<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EngineerReturnInfo extends Model
{
    public function customer_table()
    {
        return $this->belongsTo(Customers::class, 'return_from_id', 'id');
    }

    public function return_items_table()
    {
        return $this->hasMany(ReturnItem::class);
    }
}
