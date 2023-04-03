<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubcontractorModelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subcontractor_models', function (Blueprint $table) {
            $table->id();
            $table->string('subcontractor_name')->nullable();
            $table->string('subcontractor_code')->nullable();
            $table->string('subcontractor_services')->nullable();
            $table->string('subcontractor_email')->nullable();
            $table->string('subcontractor_phone')->nullable();
            $table->string('subcontractor_coveragearea')->nullable();
            $table->string('subcontractor_address')->nullable();
            $table->string('subcontractor_payrate')->nullable();
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
        Schema::dropIfExists('subcontractor_models');
    }
}
