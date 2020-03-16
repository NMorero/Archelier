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
            ['name' => 'Nicolas', 'last_name' => 'Morero', 'dni' => 42387065, 'alias' => 'nick', 'email' => 'nmorero00@gmail.com', 'phone_number' => 35136857, 'address' => 'valle escondido los arboles', 'identification_code' => 100254, 'country_id' => 1, 'state_id' => 1, 'city_id' => 1, 'relationship_id' => 1],
            ['name' => 'Agustin', 'last_name' => 'Daniele', 'dni' => 42513143, 'alias' => 'Agus', 'email' => 'adaniele@gmail.com', 'phone_number' => 35645121, 'address' => 'iturraspe 114', 'identification_code' => 100255, 'country_id' => 1, 'state_id' => 1, 'city_id' => 1, 'relationship_id' => 2],
            ['name' => 'Laura', 'last_name' => 'Urquiza', 'dni' => 45000000, 'alias' => 'Lau', 'email' => 'lurquizagmail.com', 'phone_number' => 35164564, 'address' => 'iturraspe 114', 'identification_code' => 100224, 'country_id' => 1, 'state_id' => 1, 'city_id' => 1, 'relationship_id' => 2],
            ['name' => 'Lautaro', 'last_name' => 'Pairola', 'dni' => 45001121, 'alias' => 'Lauti', 'email' => 'lpairola@gmail.com', 'phone_number' => 35124265, 'address' => 'rondeau 128', 'identification_code' => 100234, 'country_id' => 1, 'state_id' => 1, 'city_id' => 1, 'relationship_id' => 2]

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
