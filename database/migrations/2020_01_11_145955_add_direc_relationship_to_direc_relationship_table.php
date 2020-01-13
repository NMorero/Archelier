<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddDirecRelationshipToDirecRelationshipTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('DIRECT_RELATIONSHIP')->insert([
            ['company_labor_relationship' => 'manager', 'social_work' => 'osde', 'labor_union' => 'dd', 'labor_agreement' => 'dd', 'iva_condition' => 'normal', 'account_bank' => 'santander', 'account_number' => '12345678', 'cbu_number' => '0000011231', 'familyContact_name' => 'Ivan Morero', 'familyContact_phoneNumber' => 123456789, 'familyContact_address' => 'Los Arboles valle escondido'],
            ['company_labor_relationship' => 'leader', 'social_work' => 'osde', 'labor_union' => 'dd', 'labor_agreement' => 'dd', 'iva_condition' => 'normal', 'account_bank' => 'santander', 'account_number' => '98765421', 'cbu_number' => '0000010531', 'familyContact_name' => 'Ivan Morero', 'familyContact_phoneNumber' => 123456789, 'familyContact_address' => 'Los Arboles valle escondido']
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('direc_relationship', function (Blueprint $table) {
            //
        });
    }
}
