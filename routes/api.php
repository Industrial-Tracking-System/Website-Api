<?php

use App\Http\Controllers\FactoryController;
use App\Http\Controllers\EmployeeController;

Route::get('/home',[EmployeeController::class,'index']);
Route::post('/login',[EmployeeController::class,'loginapi']);
