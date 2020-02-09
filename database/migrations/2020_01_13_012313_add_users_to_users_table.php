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
            ['username' => 'ljagodnik', 'password' => '$2y$12$fqVGW79VCMoYgbgXHKtPx.L5OYQcvuGXT6NhNqfTyZXoUG0.0u4bu', 'email' => 'ljagodnik@gmail.com', 'rol_id' => 1],
            ['username' => 'adaniele', 'password' => '$2y$12$fqVGW79VCMoYgbgXHKtPx.L5OYQcvuGXT6NhNqfTyZXoUG0.0u4bu', 'email' => 'adaniele@gmail.com', 'rol_id' => 3],
            ['username' => 'lurquiza', 'password' => '$2y$12$fqVGW79VCMoYgbgXHKtPx.L5OYQcvuGXT6NhNqfTyZXoUG0.0u4bu', 'email' => 'lurquiza@gmail.com', 'rol_id' => 4],
            ['username' => 'nmorero', 'password' => '$2y$12$fqVGW79VCMoYgbgXHKtPx.L5OYQcvuGXT6NhNqfTyZXoUG0.0u4bu', 'email' => 'nmorero00@gmail.com', 'rol_id' => 2],

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
