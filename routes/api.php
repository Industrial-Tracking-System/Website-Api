<?php

use App\Http\Controllers\EmployeeApi;
use App\Http\Controllers\EmployeeController;

Route::post('/login',[EmployeeApi::class,'login']);
