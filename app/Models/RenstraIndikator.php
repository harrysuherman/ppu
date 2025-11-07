<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RenstraIndikator extends Model
{
    protected $table = 'renstra_indikator';

    protected $fillable = [
        'kode_sub_kegiatan',
        'indikator_outcome',
        'indikator_outcome_satuan',
        'base_line_tahun_2024',
        'jml_target_2026',
        'pagu_tahun_2026',
        'jml_target_2027',
        'pagu_tahun_2027',
        'jml_target_2028',
        'pagu_tahun_2028',
        'jml_target_2029',
        'pagu_tahun_2029',
        'jml_target_2030',
        'pagu_tahun_2030',
    ];

    public function subKegiatan()
    {
        return $this->belongsTo(SubKegiatan::class, 'kode_sub_kegiatan', 'kode_sub_kegiatan');
    }
}
