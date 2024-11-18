<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RenjaSubKegiatan extends Model
{
    use HasFactory;

    protected $table = "renja_sub_kegiatan";
    protected $fillable = ['kode_urusan','kode_bidang','kode_program','kode_kegiatan','nama_sub_kegiatan','kode_sub_kegiatan','indikator_sub_kegiatan','skpd_id','tahun_anggaran','pagu_rkpd','pagu_apbd','pagu_rkpd_perubahan',
                           'target_sebelum','target_sesudah','prioritas_nasional','prioritas_daerah','kelompok_sasaran','taget_n1','pagu_n1','penanggung_jawab',
                           'deleted_at','created_by','updated_by','lokasi','sumber_dana'];
}
