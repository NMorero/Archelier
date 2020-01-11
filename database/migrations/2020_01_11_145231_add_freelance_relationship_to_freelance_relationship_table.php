<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFreelanceRelationshipToFreelanceRelationshipTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('FREELANCE_RELATIONSHIP')->insert([
            ['iva_condition' => 'normal', 'account_bank' => 'santander', 'account_number' => '1234567890', 'cbu_number' => '0000002223311', 'familyContact_name' => 'Ivan Morero', 'familyContact_phoneNumber' => 123456789, 'familyContact_address' => 'Los Arboles valle escondido']

        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('freelance_relationship', function (Blueprint $table) {
            //
        });
    }
}
