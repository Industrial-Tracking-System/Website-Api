<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Auth;

class Customer extends Model
{
      use HasFactory;
    use Notifiable;

    protected $fillable = [
        'email', 'password',
    ];

  
    protected $hidden = [
        'password',
    ];
    public function orders()
    {
        return $this->hasMany('App\Order');
    }
}
