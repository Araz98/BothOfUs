<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $primaryKey = 'order_no';
    protected $fillable = [
        'product_name',
        'quantity',
        'price_each',
        'estimated',
        'bil_address',
        'ship_address',
        'total',
        'payment_method'       
    ];

}
