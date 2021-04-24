<?php
use App\Http\Controllers\ApiEmployee;
  

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Route;

Route::get('/home',[ApiEmployee::class,'index']);
