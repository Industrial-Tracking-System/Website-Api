<?php

namespace App\Http\Controllers;

use App\Models\Product_description;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;

class ProductDescriptionController extends Controller
{
  public function add_products_descrtpions(Request $request){
      /*
    $prodct_Des=new Product_description();
    $prodct_Des->category_name=$request['category_name'];
    $prodct_Des->cost=$request['cost'];
    */
  //  $imag_path=$request['image'];
    // $contents =Storage::disk('public')->get('coka.jpg');
     # $prodct_Des->image_path=$contents;
      //var_dump($contents);
         Product_description::create([
                     'quantity'=>15,

           'category_name'=>$request->category_name,
           'cost'=>$request->cost,
           'image_path'=>"https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg",
       ]);
      /*
      $prodct_Des->save();
      return response()->json(1);
      */
  }
}
