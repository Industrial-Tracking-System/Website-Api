<?php
namespace App\Http\Controllers;
use App\Models\Inventory;

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
}
