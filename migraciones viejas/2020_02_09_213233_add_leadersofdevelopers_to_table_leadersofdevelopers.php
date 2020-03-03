<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddLeadersofdevelopersToTableLeadersofdevelopers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('DEVELOPERS')->insert([
            ['user_id' => 4]


        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('LEADERS_OF_DEVELOPERS', function (Blueprint $table) {
            //
        });
    }
}
