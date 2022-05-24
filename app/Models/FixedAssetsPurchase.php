<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FixedAssetsPurchase extends Model
{
    protected $fillable = ['reference', 'item_name', 'unit', 'fixed_asset_id', 'qty', 'desciption', 'order_date', 'user_id'];
}
