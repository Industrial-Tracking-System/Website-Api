<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
class EmployeeApi extends Controller
{
    public function login(Request $request)
    {
        $emp = $request->only('email' , 'password');
            

      if (Auth::guard('Employee')->attempt($emp)){
        
         $id=Auth::guard('Employee')->user()->id;
          $success=Employee::find($id);

            return response()->json($success);          
      }
        else {
            return "wrong data";
        }
        
    }
}
