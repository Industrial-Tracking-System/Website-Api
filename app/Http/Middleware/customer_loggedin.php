<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\customer;

class customer_loggedin
{
 
    
    public function handle(Request $request, Closure $next)
    {
        $id=$request->only('customer_id');
        $customer=customer::find($id)->first();
         if($customer->api_token==null) {
        return response()->json("must be loogdin"); 
         }        
        return $next($request);
    }
}
