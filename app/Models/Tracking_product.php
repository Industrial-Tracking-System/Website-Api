<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tracking_product extends Model
{
    use HasFactory;
    public function products()
    {
        return $this->hasMany('App\Product');
    }
}
