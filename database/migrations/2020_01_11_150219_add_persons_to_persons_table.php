<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPersonsToPersonsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('PERSONS')->insert([
            ['name' => 'Nicolas', 'last_name' => 'Morero', 'dni' => 42387065, 'alias' => 'nick', 'email' => 'nmorero00@gmail.com', 'phone_number' => 35136857, 'address' => 'valle escondido los arboles', 'identification_code' => 100254, 'country_id' => 1, 'state_id' => 1, 'city_id' => 1, 'relationship_id' => 1]

        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('persons', function (Blueprint $table) {
            //
        });
    }
}
