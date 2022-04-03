<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class RequestInfo extends Model
{
    public function projects_table()
    {
        return $this->belongsTo(Projects::class, 'project_id', 'id');
    }

    public function customer_table()
    {
        return $this->belongsTo(Customers::class, 'customer_id', 'id');
    }

    public function eng_request_items_table()
    {
        return $this->hasMany(EngRequestItem::class);
    }

    public function user_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
