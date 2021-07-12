<?php

namespace App\Http\Controllers;
use App\Models\Employee;
use App\Models\product_description;
use App\Models\order_item;
use App\Models\Customer;
use App\Models\Inventory;

use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{  public function show_products(){
        $product=Product_description::get();
        return response()->json($product);
        
            }
    
     public function selcet_best_inventory(Request $requst){
         
         #get the coutomer addres 
         $id=$requst->only('id');         
         $customer=Customer::find($id)->first();;
         $location=$customer->adress;
         $csutomer_loc=explode(',', $location);
         $csutomer_loc[0]+=0;#lat
         $csutomer_loc[1]+=0;#long
         /////////////////
         $x=0;
         $inv=inventory::get();
         $size=inventory::count();
         $distance=array();
                      $earthRadius = 6371000;

         for($i=0;$i<$size;$i++){
            $temp=($inv[$i]->addres);#invtory loction 
            $inventory_loc=explode(',',$temp);
             $inventory_loc[0]+=0;#lat
             $inventory_loc[1]+=0;#long
             #calac distance between invnetory and customer
             $latFrom = deg2rad($inventory_loc[0]);
        $lonFrom = deg2rad($inventory_loc[1]);
        $latTo = deg2rad($csutomer_loc[0]);
        $lonTo = deg2rad($csutomer_loc[1]);
        $latDelta = $latTo - $latFrom;
        $lonDelta = $lonTo - $lonFrom;
        $angle = 2 * asin(sqrt(pow(sin($latDelta / 2), 2) +
        cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2)));
    $dist= $angle * $earthRadius;
           $distance[$i]['score']=$dist;
             $distance[$i]['id']=$inv[$i]->id;
         }
         
         #calac minmumm dist
         $best_inv=$distance[0];
         for($i=0;$i<$size;$i++){
             if($distance[$i]['score']<$best_inv['score']){
                 $best_inv=$distance[$i];
             }
         }
        $res=Inventory::find($best_inv['id']);
        return response()->json($res);   

         
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
