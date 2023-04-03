<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStafflistModelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stafflist_models', function (Blueprint $table) {
            $table->id();
            $table->string('staff_companyid')->nullable();
            $table->string('staff_name')->nullable();
            $table->string('staff_email')->nullable();
            $table->string('staff_phone')->nullable();
            $table->string('staff_position')->nullable();
            $table->string('staff_SIA')->nullable();
            $table->string('staff_SIA_expiry')->nullable();
            $table->string('staff_location')->nullable();
            $table->string('staff_payrate')->nullable();
            $table->string('staffsubcontractor_name')->nullable();
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
        Schema::dropIfExists('stafflist_models');
    }
}
