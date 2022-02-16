<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Projects extends Model
{
    public function customer_table()
    {
        return $this->belongsTo(Customers::class, 'customer_id', 'id');
    }
}
