<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMonitoringsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('monitorings', function (Blueprint $table) {
            $table->id();
            $table->string('sitename_id');
            $table->string('Week_Commencing');
            $table->string('Total_hours');
            $table->string('shift_day_1')->nullable();
            $table->string('start_time_day1')->nullable();
            $table->string('end_time_day1')->nullable();
            $table->string('guardname_day1')->nullable();
            $table->string('shift_hours_day1')->nullable();
            $table->string('shift_day_2')->nullable();
            $table->string('start_time_day2')->nullable();
            $table->string('end_time_day2')->nullable();
            $table->string('guardname_day2')->nullable();
            $table->string('shift_hours_day2')->nullable();
            $table->string('shift_day_3')->nullable();
            $table->string('start_time_day3')->nullable();
            $table->string('end_time_day3')->nullable();
            $table->string('guardname_day3')->nullable();
            $table->string('shift_hours_day3')->nullable();
            $table->string('shift_day_4')->nullable();
            $table->string('start_time_day4')->nullable();
            $table->string('end_time_day4')->nullable();
            $table->string('guardname_day4')->nullable();
            $table->string('shift_hours_day4')->nullable();
            $table->string('shift_day_5')->nullable();
            $table->string('start_time_day5')->nullable();
            $table->string('end_time_day5')->nullable();
            $table->string('guardname_day5')->nullable();
            $table->string('shift_hours_day5')->nullable();
            $table->string('shift_day_6')->nullable();
            $table->string('start_time_day6')->nullable();
            $table->string('end_time_day6')->nullable();
            $table->string('guardname_day6')->nullable();
            $table->string('shift_hours_day6')->nullable();
            $table->string('shift_day_7')->nullable();
            $table->string('start_time_day7')->nullable();
            $table->string('end_time_day7')->nullable();
            $table->string('guardname_day7')->nullable();
            $table->string('shift_hours_day7')->nullable();
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
        Schema::dropIfExists('monitorings');
    }
}
