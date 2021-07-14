<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Customer;

class Order extends Model
{
    use HasFactory;
    
    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
    
        public function employee()
    {
        return $this->belongsTo('App\Employee');
    }
          public function inventory()
    {
        return $this->belongsTo('App\Inventory');
    }
    public function car()
    {
        return $this->belongsTo(car::class);
    }
 ///-----------------------------------------------------

   public function order_items()
    {
        return $this->hasMany('App\Order_item');
    }
    
}
