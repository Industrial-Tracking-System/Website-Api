<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order_item extends Model
{
    use HasFactory;
          public function product_descriptions()
    {
        return $this->hasMany('App\Product_description');
    }
    
}
