<?php

use App\Http\Controllers\EmployeeApi;
use App\Http\Controllers\inventoryApi;
use App\Http\Controllers\carApi;
use App\Http\Controllers\CustomerApi;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;



///Employee Apies 
Route::post('/login',[EmployeeApi::class,'login']);
Route::get('/employees',[EmployeeApi::class,'show_employees']);
Route::get('/employees/{id?}',[EmployeeApi::class,'show_employee']);
Route::get('/set_avilable',[EmployeeApi::class,'set_avilable']);
Route::get('/logout',[EmployeeApi::class,'logout']);

////

///inventory Apies 

Route::get('/inventories',[inventoryApi::class,'show_inventories']);
Route::get('/inventories/{id?}',[inventoryApi::class,'show_inventory']);
Route::get('/inventory_orders/{id?}',[inventoryApi::class,'inventory_orders']);
Route::get('/inventory_products/{id?}',[inventoryApi::class,'inventory_products']);
////

///car Apies 

Route::get('/cars',[carApi::class,'show_cars']);
Route::get('/cars/{id?}',[carApi::class,'show_car']);
////

///customer Apies 

Route::post('/register',[CustomerApi::class,'register']);
Route::post('/customerlogin',[CustomerApi::class,'customerlogin']);
Route::get('/orders/{id?}',[CustomerApi::class,'customer_orders']);

////

///order apies 
Route::get('/products',[OrderController::class,'show_products']);
Route::post('/make_order',[OrderController::class,'make_order']);
Route::post('/order_arrived',[OrderController::class,'order_arrived']);
////
Route::get('/add_products',[ProductController::class,'add_products']);




