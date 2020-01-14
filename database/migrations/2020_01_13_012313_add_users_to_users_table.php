<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddUsersToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('USERS')->insert([
            ['username' => 'nmorero', 'password' => '$2y$12$JCG5kZ7WIfzUE8s4VJjkweLIcaFt0Q3KLzKYGGCTqf4iZWayq2TQG', 'email' => 'nmorero00@gmail.com', 'rol_id' => 1],
            ['username' => 'adaniele', 'password' => '$2y$12$fqVGW79VCMoYgbgXHKtPx.L5OYQcvuGXT6NhNqfTyZXoUG0.0u4bu', 'email' => 'adaniele@gmail.com', 'rol_id' => 2],


        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }
}
