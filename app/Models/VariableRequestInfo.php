<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class VariableRequestInfo extends Model
{
    public function user_table()
    {
        return $this->belongsTo(User::class, 'engineer_id', 'id');
    }

    public function variable_request_items_table()
    {
        return $this->hasMany(VariableRequestItem::class);
    }
}
