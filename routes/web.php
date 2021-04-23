
<?php
use App\Http\Controllers\FactoryController;
use App\Http\Controllers\EmployeeController;

Route::get('/home',[FactoryController::class, 'index']);
Route::get('/home/login',[EmployeeController::class,'login']);
Route::post('/home/login',[EmployeeController::class,'check']);
Route::middleware([MangerMiddleware::class])->group(function () {
 Route::get('/home/add-employee',[EmployeeController::class,'add_employee']);
Route::post('/home/add-employee',[EmployeeController::class,'store_employee']);
});
Route::get('/logout',[EmployeeController::class,'logout']);
?>