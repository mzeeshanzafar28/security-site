<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInternalMeetingsModelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('internal_meetings_models', function (Blueprint $table) {
            $table->id();
            $table->string('Meeting_Date_time')->nullable();
            $table->string('Meeting_attendees')->nullable();
            $table->string('Meeting_Title')->nullable();
            $table->string('Meeting_minutes')->nullable();
            $table->string('Meeting_outcomes')->nullable();
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
        Schema::dropIfExists('internal_meetings_models');
    }
}
