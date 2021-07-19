<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\order;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
class CustomerApi extends Controller
{
     public function show_customers(){
        
        $cutomers=customer::get();
         return response()->json($cutomers);
     
     }
    public function register(Request $request){
        
    $data=$request->validate([
            'email' => 'required|max:191',
              'company_name'=>'required|string',
        'password' => 'required',
            ]);
     
        $cutomer=new Customer();
         $cutomer->name="00";
        $cutomer->email=$request['email'];
        $cutomer->phone="01005748984";
            $cutomer->adress="asdasd";
        $cutomer->credit_limit =5000;
        $cutomer->api_token = NULL;
       $cutomer->password=Hash::make($request['password']);
        $cutomer->company_name=$request['company_name'];
        $cutomer->save();
        return response()->json($cutomer);
    }
    
    
    
    public function customerlogin(Request $request){
        
          $request->validate([
            'email' => 'required|max:255',
        'password' => 'required',
            ]);
        
        $emp = $request->only('email' , 'password');
            

      if (Auth::guard('Customer')->attempt($emp)){
          $id=Auth::guard('Customer')->user()->id;
          $success=Customer::find($id);
          $success->api_token=Str::random(60);
          $success->save();
            return response()->json($success);  
          
      }
        else{
                 return response()->json("wrong_data");
  
        }
     
    
    }
   
    public function customer_orders($id){
        
        $cutomer=customer::find($id);

        $orders=$cutomer->orders;
        return response()->json($orders);
    }
      public function logout(Request $request){

        $affected = DB::table('customers')
              ->where('id', '=',$request['id'])
              ->update(['api_token' => NULL]);
    
}
}
