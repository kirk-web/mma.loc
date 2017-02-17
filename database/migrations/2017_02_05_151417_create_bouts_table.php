<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBoutsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bouts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('Event_id');
            $table->integer('Bout_order');
            $table->string('Method');
            $table->date('Event_date');

            $table->string('Red_fighter');
            $table->string('Red_image');
            $table->string('Red_record');
            $table->string('Red_height');
            $table->string('Red_weight');
            $table->string('Red_status');

            $table->string('Blue_fighter');
            $table->string('Blue_image');
            $table->string('Blue_record');
            $table->string('Blue_height');
            $table->string('Blue_weight');
            $table->string('Blue_status');

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
        //
    }
}
