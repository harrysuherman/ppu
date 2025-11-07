<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RenstraSubKegiatan extends Model
{
    protected $table = 'renstra_sub_kegiatan';

    protected $fillable = [
        'kode_kegiatan',
        'kode_sub_kegiatan',
        'nama_sub_kegiatan',
    ];

    public function kegiatan()
    {
        return $this->belongsTo(Kegiatan::class, 'kode_kegiatan', 'kode_kegiatan');
    }

    public function indikators(): HasMany
    {
        return $this->hasMany(Indikator::class, 'kode_sub_kegiatan', 'kode_sub_kegiatan');
    }
}
