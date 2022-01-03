<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAlmEstudiantesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('alm_estudiantes', function (Blueprint $table) {
            $table->bigIncrements("alm_id");
            $table->string("alm_codigo",100)->unique();
            $table->string("alm_nombre",300);
            $table->integer("alm_edad")->default(11);
            $table->enum('alm_sexo', ['M', 'F', 'O'])->comment = "F = FEMENINO - M = MASCULINO - O = OTRO";
            $table->integer("alm_id_grd")->default(11);
            $table->longText("alm_observacion");
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
        Schema::dropIfExists('alm_estudiantes');
    }
}
