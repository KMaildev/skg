<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class FloorPlan extends Model
{

    protected $table = "floor_plans";

    public function users_table()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
