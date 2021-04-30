<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Factory extends Model
{
    use HasFactory;
    public function cars(){
        return $this->hasMany('App\Car');
    }
     public function employees(){
        return $this->hasMany('App\Employee');
    }
    public function inventories(){
        return $this->hasMany('App\Inventory');
    }
    public function products(){
        return $this->hasMany('App\Product');
    }
}
