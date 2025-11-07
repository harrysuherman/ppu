<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RenstraKegiatan extends Model
{
    protected $table = 'renstra_kegiatan';

    protected $fillable = [
        'kode_program',
        'kode_kegiatan',
        'nama_kegiatan',
    ];

    public function program()
    {
        return $this->belongsTo(RenstraProgram::class, 'kode_program', 'kode_program');
    }

    public function subKegiatan()
    {
        return $this->hasMany(RenstraSubKegiatan::class, 'kode_kegiatan', 'kode_kegiatan');
    }
}
