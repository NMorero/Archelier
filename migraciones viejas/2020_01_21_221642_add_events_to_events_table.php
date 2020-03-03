<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddEventsToEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      DB::table('EVENTS')->insert([
          ['message' => 'Evento 1', 'end_date' => '2020-01-15', 'client_id' => 1, 'project_id' => 1],
          ['message' => 'Evento 2', 'end_date' => '2020-01-21', 'client_id' => 1, 'project_id' => 1]


      ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('events', function (Blueprint $table) {
            //
        });
    }
}
