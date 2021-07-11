<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    public function factory()
    {
        return $this->belongsTo('App\Factory');
    }
    public function inventory()
    {
        return $this->belongsTo('App\Inventory');
    }
    public function product_description()
    {
        return $this->belongsTo('App\Product-description');
    }
       public function Tracking_product()
    {
        return $this->belongsTo('App\Tracking_product');
    }
}
