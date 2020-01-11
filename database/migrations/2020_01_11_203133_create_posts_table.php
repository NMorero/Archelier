<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('POSTS', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title');
            $table->longText('message');
            $table->unsignedBigInteger('image_id');
            $table->foreign('image_id')->references('id')->on('IMAGES');
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('USERS');
            $table->unsignedBigInteger('client_id')->nullable();
            $table->foreign('client_id')->references('id')->on('CLIENTS');
            $table->unsignedBigInteger('project_id')->nullable();
            $table->foreign('project_id')->references('id')->on('PROJECTS');
            $table->unsignedBigInteger('view_id')->nullable();
            $table->foreign('view_id')->references('id')->on('VIEWS');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
}
