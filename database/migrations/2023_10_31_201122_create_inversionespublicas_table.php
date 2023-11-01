<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInversionespublicasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inversionespublicas', function (Blueprint $table) {
            $table->id();
            $table->string('tag_comentario');
            $table->string('titulo');
            $table->text('bajada');
            $table->string('img')->nullable();
            $table->string('enlace');
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
        Schema::dropIfExists('inversionespublicas');
    }
}
