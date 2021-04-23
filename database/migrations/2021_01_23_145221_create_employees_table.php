<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name',100);
            $table->boolean('is_manager')->default(0);
            $table->string('email',100);
            $table->string('password',100);
            $table->string('phone',100)->nullable();
            $table->boolean('available')->default(1);
            $table->string('job_tittle',100);
            $table->unsignedbiginteger("supervisor_id")->nullable();
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
        Schema::dropIfExists('employees');
    }
}
