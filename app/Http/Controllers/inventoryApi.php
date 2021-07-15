<?php
namespace App\Http\Controllers;
use App\Models\Inventory;
use App\Models\order; 
use Illuminate\Http\Request;

class inventoryApi extends Controller
{
    
    public function show_inventories(){
         
        $inventories=Inventory::get();
     return response()->json($inventories);
        
    }
    
     public function show_inventory($id){
         $inventories=Inventory::find($id);
     return response()->json($inventories);
        
    }
    
    public function inventory_orders($id){
        $inv=inventory::find($id);
        $orders=$inv->orders;
        return response()->json($orders);
    }
      public function inventory_products($id){
        $inv=inventory::find($id);
        $products=$inv->products;
        return response()->json($products);
    }
}
