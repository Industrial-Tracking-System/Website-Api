<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            
$table->bigIncrements('rfid');
            $table->unsignedbiginteger('description_id');
            $table->foreign('description_id')->references('category_id')->on('product_descriptions');
            $table->unsignedbiginteger('inventory_id');
            $table->foreign('inventory_id')->references('id')->on('inventories');
            $table->string('factory_id');
            $table->foreign('factory_id')->references('name')->on('factories');
            
           
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
        Schema::dropIfExists('products');
    }
}
