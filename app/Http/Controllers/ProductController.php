<?php

namespace App\Http\Controllers;
use App\Models\Employee;
use App\Models\product_description;
use App\Models\order;
use App\Models\order_item;
use App\Models\Customer;
use App\Models\Inventory;
use App\Models\Product;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function add_products(){
        for($i=0;$i<6;$i++){
            $item=new product();
            $item->factory_id="fact";
         
               $item->description_id=rand(1,2);
            $item->inventory_id=rand(1,2);
            $item->save();
        }
        return response()->json(1);
    }
public function rfid_tag ($outputdata){
    $rfid_tag=(int)$outputdata;
    $product=new product();
    $affected = DB::table('Products')->where('rfid', '=',$rfid_tag)->get();
    if(sizeof($affected)!=0){
      DB::table('Products')->where('rfid', '=',$rfid_tag)->update(['rfid_counter' =>$affected[0]->rfid_counter+=1]);
    
    }
    
    
    
else{
        $item=new product();
    $item->rfid=$rfid_tag;
        $item->factory_id="fact";
         $item->rfid_counter=0;
               $item->description_id=rand(1,2);
            $item->inventory_id=1;
            $item->save();
        }
}
    

}



