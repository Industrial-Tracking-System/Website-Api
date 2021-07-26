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
    public function show_customer($id){
        $cutomer =customer::find($id);
        return response()->json($cutomer);
    }
    public function register(Request $request){
        
    $data=$request->validate([
            'email' => 'required|max:191|email',
              'company_name'=>'required|string',
        'password' => 'required',
        'name'=>'required|string',
        'phone'=>'required'
            ]);
        $cutomer=new Customer();
        $name=explode('@',$request['email']);
         $cutomer->name=$request['name'];
        $cutomer->email=$request['email'];
        $cutomer->phone=$request['phone'];
        $cutomer->longitude= 31.210550883327265;
        $cutomer->latitude=  30.03046585388168;
        $cutomer->credit_limit =5000;
        $cutomer->api_token = Str::random(60);
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
                return response()->json([
                                'message' => 'worong data ',
                    ]);        
  
        }
     
    
    }
   
    public function customer_orders($id){
        
        $cutomer=customer::find($id);

        $orders=$cutomer->orders;
        return response()->json($orders);
    }
    
      public function logout(Request $request){
        
        $id=$request->only('id');
        $id=(int)$id['id'];
         $affe = DB::table('customers')->where('id', '=',$id)->update(['api_token' => NULL]);
          
}
    public function set_custmoer_loction(Request $request){
        $cutomer=customer::find($request['customer_id']);
        $cutomer->latitude=$request['latitude'];
        $cutomer->longitude=$request['longitude'];
        $cutomer->save();
        
    }
    
}
