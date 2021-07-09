<?php

use App\Http\Controllers\EmployeeApi;
use App\Http\Controllers\inventoryApi;
use App\Http\Controllers\carApi;
use App\Http\Controllers\CustomerApi;
use App\Http\Controllers\ProductController;

Route::post('/login',[EmployeeApi::class,'login']);
Route::get('/employees',[EmployeeApi::class,'show_employees']);
Route::get('/employees/{id?}',[EmployeeApi::class,'show_employee']);

Route::get('/inventories',[inventoryApi::class,'show_inventories']);
Route::get('/inventories/{id?}',[inventoryApi::class,'show_inventory']);

Route::get('/cars',[carApi::class,'show_cars']);
Route::get('/cars/{id?}',[carApi::class,'show_car']);

Route::post('/register',[CustomerApi::class,'register']);
Route::post('/customerlogin',[CustomerApi::class,'customerlogin']);


Route::post('/selcet_items',[ProductController::class,'selcet_items']);
Route::get('/products',[ProductController::class,'show_products']);
