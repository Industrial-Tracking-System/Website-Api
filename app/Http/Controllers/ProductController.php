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


}
