<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPostsToPostTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('POSTS')->insert([
            ['title' => 'Primer post', 'message' => 'orem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, iusto! Laborum fugiat libero assumenda culpa et, ratione, sed tempora magnam, accusantium similique animi dolore. Architecto explicabo voluptas possimus corporis nemo?', 'user_id' => 1, 'client_id' => 1, 'project_id' => 1],
            ['title' => 'Segundo post', 'message' => 'orem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, iusto! Laborum fugiat libero assumenda culpa et, ratione, sed tempora magnam, accusantium similique animi dolore. Architecto explicabo voluptas possimus corporis nemo?', 'user_id' => 1, 'client_id' => 1, 'project_id' => 2]


        ]);
    }


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('post', function (Blueprint $table) {
            //
        });
    }
}
