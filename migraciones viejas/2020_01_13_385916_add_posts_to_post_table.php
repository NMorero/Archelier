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
            ['title' => 'Primer post', 'type' => 'post', 'message' => 'orem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, iusto! Laborum fugiat libero assumenda culpa et, ratione, sed tempora magnam, accusantium similique animi dolore. Architecto explicabo voluptas possimus corporis nemo?', 'user_id' => 1, 'client_id' => 1, 'project_id' => 1, 'view_id' => null, 'image' => null ],
            ['title' => 'Segundo post','type' => 'post', 'message' => 'orem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, iusto! Laborum fugiat libero assumenda culpa et, ratione, sed tempora magnam, accusantium similique animi dolore. Architecto explicabo voluptas possimus corporis nemo?', 'user_id' => 1, 'client_id' => 1, 'project_id' => 2, 'view_id' => null, 'image' => null ],
            ['title' => 'Tercer post','type' => 'post', 'message' => 'orem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, iusto! Laborum fugiat libero assumenda culpa et, ratione, sed tempora magnam, accusantium similique animi dolore. Architecto explicabo voluptas possimus corporis nemo?', 'user_id' => 1, 'client_id' => 2, 'project_id' => 3, 'view_id' => 1, 'image' => '/upload/posts/cam1.jpg']

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
