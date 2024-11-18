<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RenjaProgramIndikator extends Model
{
    use HasFactory;
    protected $table = "renja_program_indikator";

    protected $fillable = [
        'indikator_program','renja_program_id','target','satuan'
    ];
}
