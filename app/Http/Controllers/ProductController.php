<?php

namespace App\Http\Controllers;
use App\Models\Employee;
use App\Models\product_description;
use App\Models\order;
use App\Models\order_item;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    
    public function show_products(){
        $product=Product_description::get();
        return response()->json($product);
        
            }
    
    
    
 
    public function selcet_items(Request $requst ){
        
        $pro = $requst->only('category_id','qantinty','size','customer_id');
     
        $selctions=array();
        $qan=array();
        for($i=0;$i<$pro['size'];$i++){
        $selctions[$i]=DB::table('product_descriptions')->where('category_id', $pro['category_id'][$i])->first();
        $qan[$i]= $pro['qantinty'][$i];  
        }
            
        
        $order=new order();
       
        $order=new order();
        $order->date="2021-05-11";
         for($i=0;$i<$pro['size'];$i++){
        $order->total_cost+=$selctions[$i]->cost*$qan[$i];
        }
        $order->employee_id=3+$i;
        $order->customer_id=$pro['customer_id'];
        $order->stauts='prepreing';
        $order->inventory_id=1;
        $order->save();
        
        
        for($i=0;$i<$pro['size'];$i++){
        $items=new order_item();

        $items->quantity=$qan[$i];
        $items->order_id=$order->id;    
        $items->category_id=$pro['category_id'][$i];
        $items->save();
        }
        
        return response()->json(1);   
        

    }
}
