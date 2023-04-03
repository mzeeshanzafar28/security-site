<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSupervisoryVisitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supervisory_visits', function (Blueprint $table) {
            $table->id();
            $table->string('site_id');
            $table->string('date');
            $table->string('staff_id');
            $table->string('visit_type');
            $table->string('staff_image');
            $table->string('supervisor_name');
            $table->string('time_keeping');
            $table->string('appearnce');
            $table->string('attitude');
            $table->string('communication');
            $table->text('other_comments');
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
        Schema::dropIfExists('supervisory_visits');
    }
}
