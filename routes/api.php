<?php

use App\Http\Controllers\EmployeeApi;
use App\Http\Controllers\inventoryApi;
use App\Http\Controllers\carApi;

Route::post('/login',[EmployeeApi::class,'login']);
Route::get('/employees',[EmployeeApi::class,'show_employees']);
Route::get('/employees/{id?}',[EmployeeApi::class,'show_employee']);

Route::get('/inventories',[InventoryApi::class,'show_inventories']);
Route::get('/inventories/{id?}',[inventoryApi::class,'show_inventory']);

Route::get('/cars',[carApi::class,'show_cars']);
Route::get('/cars/{id?}',[carApi::class,'show_car']);