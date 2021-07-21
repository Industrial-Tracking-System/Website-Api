<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLongAndLatToTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {    
        Schema::table('customers', function (Blueprint $table) {

            $table->dropColumn('adress');

        });
         Schema::table('inventories', function (Blueprint $table) {

            $table->dropColumn('addres');

        });
           Schema::table('customers', function ($table) {
        $table->double('latitude');
        $table->double('longitude');

        });
           Schema::table('inventories', function ($table) {
        $table->double('latitude');
        $table->double('longitude');

        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tables', function (Blueprint $table) {
            //
        });
    }
}
