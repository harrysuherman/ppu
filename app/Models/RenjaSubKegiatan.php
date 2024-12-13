<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Scopes\RenjaSubKegiatan as Scope;

class RenjaSubKegiatan extends Model
{
    use HasFactory;

    protected $table = "renja_sub_kegiatan";
    protected $fillable = ['kode_urusan','kode_bidang','kode_program','kode_kegiatan','nama_sub_kegiatan','kode_sub_kegiatan','indikator_sub_kegiatan','skpd_id','tahun_anggaran','pagu_rkpd','pagu_apbd','pagu_rkpd_perubahan',
                           'target_sebelum','target_sesudah','prioritas_nasional','prioritas_daerah','kelompok_sasaran','taget_n1','pagu_n1','penanggung_jawab',
                           'deleted_at','created_by','updated_by','lokasi','sumber_dana',
                        'jml_realisasi_tw1','jml_realisasi_tw2','jml_realisasi_tw3','jml_realisasi_tw4',
                        'nilai_realisasi_tw1','nilai_realisasi_tw2','nilai_realisasi_tw3','nilai_realisasi_tw4',
                    'jml_target_sebelum','jml_target_sesudah','satuan_target_sebelum','satuan_target_sesudah',
                'jml_target_rpd_2024_2026',
                'satuan_target_rpd_2024_2026',
                'nilai_target_rpd_2024_2026',
                'nilai_target'
            ];

    public function realisasi(){
       return $this->hasMany(RenjaSubKegiatanRealisasi::class,'renja_sub_kegiatan_id','id');
    }

    public function kegiatan(){
        return $this->belongsTo(RenjaKegiatan::class,'kode_kegiatan','kode_kegiatan')->withDefault([
            'nama_kegiatan'=> ''
        ]);
    }

    public function skpd(){
        return $this->belongsTo(SatuanKerja::class,'skpd_id','id')->withDefault([
            'nama_satker'=> ''
        ]);
    }

    protected static function booted(): void
    {
        static::addGlobalScope(new Scope);
    }
}
