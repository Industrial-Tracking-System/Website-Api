<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Auth;

class Employee extends Authenticatable
{
    use HasFactory;
    use Notifiable;

    protected $fillable = [
        'email', 'password',
    ];

  
    protected $hidden = [
        'password',
    ];

   
   
    
    
    
    //---------------------------------------------
    //---------------------------------------------
    public function factory()
    {
        return $this->belongsTo('App\Factory');
    }
       public function employee()
    {
        return $this->belongsTo('App\Employee');
    }
    
     ///-----------------------------------------------------

     public function orders()
    {
return $this->hasMany(order::class);
     }
      public function employees()
    {
        return $this->hasMany('App\Employee');
    }
    
}
