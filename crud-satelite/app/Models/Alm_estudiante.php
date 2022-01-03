<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Alm_estudiante extends Model
{
    use HasFactory;
    protected $fillable = ['alm_codigo','alm_nombre','alm_edad','alm_observacion','alm_sexo'];
    protected $table = 'alm_estudiantes';
}
