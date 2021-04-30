<?php
namespace App\Http\Controllers;

use App\Models\Car;


use Illuminate\Http\Request;

class carApi extends Controller
{
      public function show_cars(){
         
        $cars=Car::get();
     return response()->json($cars);
        
    }
      public function show_car($id){
         $cars=Car::find($id);
     return response()->json($cars);
        
    }
}
