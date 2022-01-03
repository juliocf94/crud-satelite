<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Alm_estudiante extends Model
{
    use HasFactory;
    protected $table = 'alm_estudiantes';
    protected $primaryKey = 'alm_id';
    protected $fillable = ['alm_codigo','alm_nombre','alm_edad','alm_observacion','alm_sexo'];
}
