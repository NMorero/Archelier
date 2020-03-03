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
            ['iva_condition' => 'normal', 'account_bank' => 'santander', 'account_number' => '123456789', 'cbu_number' => '0000002223311', 'familyContact_name' => 'Ivan Morero', 'familyContact_phoneNumber' => 123456789, 'familyContact_address' => 'Los Arboles valle escondido'],
            ['iva_condition' => 'normal', 'account_bank' => 'santander', 'account_number' => '987654321', 'cbu_number' => '0000001112233', 'familyContact_name' => 'Laura Urquiza', 'familyContact_phoneNumber' => 987654321, 'familyContact_address' => 'Rondeau 69']

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
