<?php

use App\Http\Controllers\EmployeeApi;
use App\Http\Controllers\inventoryApi;
use App\Http\Controllers\carApi;
use App\Http\Controllers\CustomerApi;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductDescriptionController;


///Employee Apies 
Route::post('/login',[EmployeeApi::class,'login']);
Route::get('/employees',[EmployeeApi::class,'show_employees']);
Route::get('/employees/{id?}',[EmployeeApi::class,'show_employee']);
Route::get('/employees/{id?}/crrunt_orders',[EmployeeApi::class,'crrunt_orders']);
Route::get('/employees/{id?}/orders',[EmployeeApi::class,'show_employee_orders']);

Route::get('/set_avilable',[EmployeeApi::class,'set_avilable']);
Route::post('/logout',[EmployeeApi::class,'logout']);

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
Route::get('/{id?}/orders',[CustomerApi::class,'customer_orders']);
Route::post('/customer_logout',[CustomerApi::class,'logout']);
Route::get('/customers',[CustomerApi::class,'show_customers']);
Route::get('/customers/{id?}',[CustomerApi::class,'show_customer']);

////
Route::get('/products',[OrderController::class,'show_products']);

Route::post('/add_products_descrtpions',[ProductDescriptionController::class,'add_products_descrtpions']);


///order apies 
Route::post('/make_order',[OrderController::class,'make_order']);

Route::post('/order_arrived',[OrderController::class,'order_arrived']);
/*
Route::middleware([customer_loggedin::class])->group(function () {

});
*/
Route::get('/orders',[OrderController::class,'show_orders']);
Route::get('/orders/{id?}',[OrderController::class,'show_order']);


////
Route::get('/add_products',[ProductController::class,'add_products']);
//



