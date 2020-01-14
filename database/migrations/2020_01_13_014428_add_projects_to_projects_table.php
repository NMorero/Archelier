<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddProjectsToProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('PROJECTS')->insert([
            ['project_name' => 'projecto 1', 'client_id' => 1, 'manager_id' => 1, 'leader_id' => 1],
            ['project_name' => 'projecto 2', 'client_id' => 1, 'manager_id' => 1, 'leader_id' => 1],
            ['project_name' => 'projecto 3', 'client_id' => 2, 'manager_id' => 1, 'leader_id' => 1]

        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('projects', function (Blueprint $table) {
            //
        });
    }
}
