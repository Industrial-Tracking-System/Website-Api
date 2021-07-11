<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTrackingProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tracking_products', function (Blueprint $table) {
            $table->unsignedbiginteger('order_id');
            $table->foreign('order_id')->references('id')->on('orders');
            $table->unsignedbiginteger('rfid');
            $table->foreign('rfid')->references('rfid')->on('products');
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
        Schema::dropIfExists('tracking_products');
    }
}
