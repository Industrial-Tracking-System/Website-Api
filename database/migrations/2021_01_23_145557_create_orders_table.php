<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->date('date');
            $table->double('total_cost',100);
            $table->string('stauts',100);
            $table->unsignedbiginteger('customer_id');
             $table->foreign('customer_id')->references('id')->on('customers');
            $table->unsignedbiginteger('employee_id');
            $table->foreign('employee_id')->references('id')->on('employees');
            $table->unsignedbiginteger('inventory_id');
            $table->foreign('inventory_id')->references('id')->on('inventories');

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
        Schema::dropIfExists('orders');
    }
}
