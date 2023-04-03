<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateActivitiesoccuredsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('activitiesoccureds', function (Blueprint $table) {
            $table->id();
            $table->string('sitename_id');
            $table->string('Week_Commencing');
            $table->string('Activity_Type');
            $table->string('reason_of_activity');
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
        Schema::dropIfExists('activitiesoccureds');
    }
}
