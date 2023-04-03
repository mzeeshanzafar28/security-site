<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddMultipleColumnsInMonitoringTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('monitorings', function (Blueprint $table) {
            $table->string('start_time_day1_2')->nullable();
            $table->string('end_time_day1_2')->nullable();
            $table->string('guardname_day1_2')->nullable();
            $table->string('shift_hours_day1_2')->nullable();
            $table->string('start_time_day2_2')->nullable();
            $table->string('end_time_day2_2')->nullable();
            $table->string('guardname_day2_2')->nullable();
            $table->string('shift_hours_day2_2')->nullable();            
            $table->string('start_time_day3_2')->nullable();
            $table->string('end_time_day3_2')->nullable();
            $table->string('guardname_day3_2')->nullable();
            $table->string('shift_hours_day3_2')->nullable();
            $table->string('start_time_day4_2')->nullable();
            $table->string('end_time_day4_2')->nullable();
            $table->string('guardname_day4_2')->nullable();
            $table->string('shift_hours_day4_2')->nullable();
            $table->string('start_time_day5_2')->nullable();
            $table->string('end_time_day5_2')->nullable();
            $table->string('guardname_day5_2')->nullable();
            $table->string('shift_hours_day5_2')->nullable();
            $table->string('start_time_day6_2')->nullable();
            $table->string('end_time_day6_2')->nullable();
            $table->string('guardname_day6_2')->nullable();
            $table->string('shift_hours_day6_2')->nullable();            
            $table->string('start_time_day7_2')->nullable();
            $table->string('end_time_day7_2')->nullable();
            $table->string('guardname_day7_2')->nullable();
            $table->string('shift_hours_day7_2')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('monitorings', function (Blueprint $table) {
            //
        });
    }
}
