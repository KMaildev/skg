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

    public function customer_table()
    {
        return $this->belongsTo(Customers::class, 'customer_id', 'id');
    }

    public function variable_logistics_team_sends_table()
    {
        return $this->belongsTo(VariableLogisticsTeamSend::class, 'id', 'variable_request_info_id');
    }


    public function variable_logistics_team_checks_table()
    {
        return $this->hasMany(VariableLogisticsTeamCheck::class);
    }


    public function variable_payments_table()
    {
        return $this->belongsTo(VariablePayment::class, 'id', 'variable_request_info_id');
    }
}
