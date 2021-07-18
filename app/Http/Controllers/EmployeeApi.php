<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class EmployeeApi extends Controller
{
    public function login(Request $request)
    {
        $emp = $request->only('email' , 'password');
            

      if (Auth::guard('Employee')->attempt($emp)){
        
         $id=Auth::guard('Employee')->user()->id;
          $success=Employee::find($id);
          $success->api_token=Str::random(60);
          $success->save();
            return response()->json($success);          
      }
        else {
            return "wrong data";
        }
        
    }
     public function set_avilable(){
    DB::table('employees') ->update(['available' => 1]);
        DB::table('cars') ->update(['available' => 1]);
        return response()->json(1);

    }
     public function show_employees(){
         
        $employees=Employee::get();
     return response()->json($employees);
        
    }
     public function show_employee($id){
         $employees=Employee::find($id);
     return response()->json($employees);
        
    }
        public function logout(Request $request){

        $affected = DB::table('employees')
              ->where('id', '=',$request['id'])
              ->update(['api_token' => NULL]);
    
}
        
}
