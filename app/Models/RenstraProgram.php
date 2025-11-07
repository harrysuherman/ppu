<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RenstraProgram extends Model
{
    protected $table = 'renstra_program';

    protected $fillable = [
        'kode_urusan',
        'kode_program',
        'nama_program',
    ];

    public function urusan()
    {
        return $this->belongsTo(RenstraUrusan::class, 'kode_urusan', 'kode_urusan');
    }

    public function kegiatan()
    {
        return $this->hasMany(RenstraKegiatan::class, 'kode_program', 'kode_program');
    }
}
