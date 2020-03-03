<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddRelationshipToRelationshipTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('RELATIONSHIP')->insert([
            ['freelance_id' => 1],
            ['freelance_id' => 2],
            ['direct_id' => 1],
            ['direct_id' => 2]

        ]);
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('relationship', function (Blueprint $table) {
            //
        });
    }
}
