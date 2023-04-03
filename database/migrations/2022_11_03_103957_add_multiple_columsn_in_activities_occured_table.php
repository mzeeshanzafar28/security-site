<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddMultipleColumsnInActivitiesOccuredTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('activitiesoccureds', function (Blueprint $table) {
            $table->string('complaint_date')->nullable();
            $table->string('client_name')->nullable();
            $table->string('client_email')->nullable();
            $table->text('complain_recieved')->nullable();
            $table->string('suplier_name')->nullable();
            $table->string('supplier_guard_name')->nullable();
            $table->text('complaint_resolve')->nullable();
            $table->text('supplier_communication')->nullable();
            $table->string('controllers')->nullable();
            $table->string('complaint_handler')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('activitiesoccureds', function (Blueprint $table) {
            //
        });
    }
}

