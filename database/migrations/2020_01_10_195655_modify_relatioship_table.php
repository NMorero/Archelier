<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ModifyRelatioshipTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('RELATIONSHIP', function (Blueprint $table) {

            $table->unsignedBigInteger('person_id');
            $table->foreign('person_id')->references('id')->on('PERSONS');

            $table->unsignedBigInteger('freelance_id')->nullable();
            $table->foreign('freelance_id')->references('id')->on('FREELANCE_RELATIONSHIP');

            $table->unsignedBigInteger('direct_id')->nullable();
            $table->foreign('direct_id')->references('id')->on('DIRECT_RELATIONSHIP');

            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
