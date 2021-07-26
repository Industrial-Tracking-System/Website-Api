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
                  return response()->json([
        'message' => 'worong data ',
]);        

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
            $id=$request->only('id');
            $id=(int)$id['id'];
        $affected = DB::table('employees')
              ->where('id', '=',$id)
              ->update(['api_token' => NULL]);
    
}
    public function crrunt_orders($id){
          $employee=Employee::find($id);
        $crrunt_orders;
        $flag=false;
        $i=0;
        foreach( $employee->orders as $order  ){
            
            if($order->stauts=='on way'){
            $crrunt_orders=$order;
                $flag=true;
            }
            $i++;
  
        }
        
                  if($flag==false){
      return response()->json([
                                'message' => 'Ther is no Crrunt Orders',
                    ]);        
              }
              
           return response()->json($crrunt_orders);
         
    }
     public function show_employee_orders($id){
          $employee=Employee::find($id);
        
           return response()->json($employee->orders);
        
    }
        
}
