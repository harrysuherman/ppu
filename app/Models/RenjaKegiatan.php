<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RenjaKegiatan extends Model
{
    use HasFactory;

    protected $table = "renja_kegiatan";
    protected $fillable = ['kode_urusan','kode_bidang','kode_program','nama_kegiatan','kode_kegiatan','indikator_kegiatan','skpd_id','tahun_anggaran','pagu_rkpd','pagu_apbd','pagu_rkpd_perubahan',
                           'target_sebelum','target_sesudah','prioritas_nasional','prioritas_daerah','kelompok_sasaran','taget_n1','pagu_n1','penanggung_jawab',
                           'deleted_at','created_by','updated_by','jml_target_sebelum','jml_target_sesudah','satuan_target_sebelum','satuan_target_sesudah',];
    public function skpd()
    {
        return $this->belongsTo(SatuanKerja::class, 'skpd_id', 'id')->withDefault(['nama_satker' => '']);
    }
}
