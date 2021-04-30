<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_items', function (Blueprint $table) {
            $table->integer('quantity'); 
            $table->unsignedbiginteger('order_id');
            $table->foreign('order_id')->references('id')->on('orders');
            $table->unsignedbiginteger('category_id');
            $table->foreign('category_id')->references('category_id')->on('product_descriptions');
            $table->timestamps();
            
          
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('order_items');
    }
}
