<?php

namespace App\Http\Controllers;
use App\Models\Employee;
use App\Models\order_item;
use App\Models\Customer;
use App\Models\Inventory;
use Illuminate\Support\Facades\DB;
use App\Models\Order;
use App\Models\Tracking_product;
use App\Models\product;
use App\Models\car;
use App\Models\Product_description;
use App\Models\Factory;

use Illuminate\Http\Request;


class OrderController extends Controller{
  public function show_products(){
        $product=Product_description::get();
        return response()->json($product);
   

                
            }
 public function show_orders(){
        $orders=Order::get();
        return response()->json($orders);
   

                
            }
public function show_order($id){
    $order =order::find($id);
    return response()->json($order);
    
}
    
     public static   function selcet_best_inventory($id ){
         
         #get the coutomer addres 
        #$id=$requst->only('id');         
         $customer=Customer::find($id);
     
         /////////////////
         $x=0;
         $inv=inventory::get();
         $size=inventory::count();
         $distance=array();
        $earthRadius = 6371000;

         for($i=0;$i<$size;$i++){

        $latFrom = deg2rad($inv[$i]->latitude);
        $lonFrom = deg2rad($inv[$i]->longitude);
        $latTo = deg2rad($customer->latitude);
        $lonTo = deg2rad($customer->longitude);
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
         asort($distance);
        $res=Inventory::find($best_inv['id']);

            return $distance;   
        
 
         
     }
   
    public function select_employee(){
        
                $employee=Employee::all();
                $temp=new Employee();

          for($i=0;$i<sizeof($employee);$i++){
            if($employee[$i]->is_manager!=1 && $employee[$i]->available==1){
                $temp=$employee[$i];
                $employee[$i]->available=0;
                $employee[$i]->save();
                break;
            }
        }
        return $temp;
    }
    
     public function select_car(){
        
                $car=car::all();
                $temp=new car();

          for($i=0;$i<sizeof($car);$i++){
            if($car[$i]->available==1){
                $temp=$car[$i];
                $car[$i]->available=0;
                $car[$i]->save();
                break;
            }
        }
        return $temp;
    }
    
    public function make_order(Request $requst ){

        
        $pro = $requst->only('category_id','qantinty','size','customer_id');
        
        $inv=$this->selcet_best_inventory($pro['customer_id']);
        
        $employee=$this->select_employee();
        $car=$this->select_car();
        $flag=false;
       foreach($inv as $n){
           $id=$n['id'];
           $inv=inventory::find($id);
           $inventory_products=$inv->products;
           if(sizeof($inventory_products)>0){
               $inv_id=$inventory_products[0]->inventory_id;
               break;
          }
       }

        $selctions=array();
        $qan=array();
        $costs=array();
       for($i=0;$i<$pro['size'];$i++){
         $qan[$i]= $pro['qantinty'][$i];  
       $selctions[$i]= DB::table('products')->select(DB::raw('*'))->where('description_id', '=', $pro['category_id'][$i])->where('products.inventory_id','=',$inv['id'])->get();
        $costs[$i]=DB::table('product_descriptions')->where('category_id', $pro['category_id'][$i])->first();
        }   
        
       
        $order=new order();
        $order->date="2021-05-11";
         for($i=0;$i<$pro['size'];$i++){
        $order->total_cost+=$costs[$i]->cost*$qan[$i];
        }
      
        $order->employee_id=$employee->id;
        $order->car_id=$car->id;
        $order->customer_id=$pro['customer_id'];
        $order->stauts='prepreing';
        $order->inventory_id=$inv_id;
        $order->save();
        for($i=0;$i<sizeof($selctions);$i++){

        foreach($selctions[$i] as $selec){
            $tracking_obj=new Tracking_product();
         $tracking_obj->order_id=$order->id;
        $tracking_obj->rfid=$selec->rfid;
            $tracking_obj->save();

        }
        
      
        
        }
        
        
        
        
        for($i=0;$i<$pro['size'];$i++){
        $items=new order_item();

        $items->quantity=$qan[$i];
        $items->order_id=$order->id;    
        $items->category_id=$pro['category_id'][$i];
        $items->save();
        }
 
    
           return response()->json(1);   
           
}
    
    
    public function order_arrived(Request $requst){
        $order_id=$requst->only('order_id');
        $order=order::find($order_id);
        
        DB::table('employees') ->where('id', $order[0]->employee_id) ->update(['available' => 1]);
        DB::table('cars') ->where('id',$order[0]->car_id) ->update(['available' => 1]);
        
        $products=DB::table('Tracking_products')->select(DB::raw('*'))->where('order_id', '=', $order_id)->get();
       DB::table('tracking_products')->where('order_id', '=',$order_id)->delete();

        for($i=0;$i<sizeof($products);$i++){
             DB::table('products')->where('rfid','=',$products[$i]->rfid)->delete();
        }
        # DB::table('products')->where('order_id', '=',$order_id)->delete();     

           
                   return response()->json($products);      

        
    }
    
}

