<?php

namespace App\Models;
use App\Models\order;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    use HasFactory;
    public function factory()
    {
        return $this->belongsTo('App\Factory');
    }
     public function orders()
    {
        return $this->hasMany(order::class);
    }
    
}
