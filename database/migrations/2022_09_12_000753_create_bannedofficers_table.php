<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBannedofficersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bannedofficers', function (Blueprint $table) {
            $table->timestamps();
            $table->id();
            $table->string('Staff_Name');
            $table->string('SIA_License_Number');
            $table->string('Reason_of_Ban');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bannedofficers');
    }
}
