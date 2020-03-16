<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddTasksToTasksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('TASKS')->insert([
            ['message' => 'Primer task', 'status' => 'ongoing', 'end_date' => '2020-01-15', 'user_id' => 1, 'client_id' => 1, 'project_id' => 1],
            ['message' => 'Segundo task', 'status' => 'done', 'end_date' => '2020-01-20', 'user_id' => 2, 'client_id' => 1, 'project_id' => 1],
            ['message' => 'Tercer task', 'status' => 'ongoing', 'end_date' => '2020-01-17', 'user_id' => 1, 'client_id' => 1, 'project_id' => 1],
            ['message' => 'Cuarto task', 'status' => 'done', 'end_date' => '2020-01-15', 'user_id' => 2, 'client_id' => 1, 'project_id' => 1],
            ['message' => 'Quinto task', 'status' => 'test', 'end_date' => '2020-01-17', 'user_id' => 1, 'client_id' => 1, 'project_id' => 1],
            ['message' => 'Sexto task', 'status' => 'ongoing', 'end_date' => '2020-01-15', 'user_id' => 2, 'client_id' => 1, 'project_id' => 1],
            ['message' => 'Septimo task', 'status' => 'ongoing', 'end_date' => '2020-01-21', 'user_id' => 1, 'client_id' => 1, 'project_id' => 1],
            ['message' => 'Octavo task', 'status' => 'test', 'end_date' => '2020-01-15', 'user_id' => 2, 'client_id' => 1, 'project_id' => 1],
            ['message' => 'Noveno task', 'status' => 'done', 'end_date' => '2020-01-21', 'user_id' => 1, 'client_id' => 1, 'project_id' => 1],
            ['message' => 'Decimo task', 'status' => 'ongoing', 'end_date' => '2020-01-17', 'user_id' => 1, 'client_id' => 1, 'project_id' => 1],


        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tasks', function (Blueprint $table) {
            //
        });
    }
}
