<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Scopes\RenjaProgram as Scope;

class RenjaProgram extends Model
{
    use HasFactory;

    protected $table = "renja_program";
    protected $fillable = ['kode_urusan','kode_bidang','nama_program','indikator_program','target_n1','pagu_n1','target_sebelum','target_sesudah',
    'kode_program','skpd_id','tahun_anggaran','pagu_rkpd','pagu_apbd','pagu_rkpd_perubahan','created_by','udpated_by'];

    protected static function booted(): void
    {
        static::addGlobalScope(new Scope);
    }

    public function indikator(){
        return $this->hasMany(RenjaProgramIndikator::class,'renja_program_id','id');
    }

    public function sub_kegiatan(){
        return $this->hasMany(RenjaSubKegiatan::class,'kode_program','kode_program');
    }

    public function skpd()
    {
        return $this->belongsTo(SatuanKerja::class, 'skpd_id', 'id')->withDefault(['nama_satker' => '']);
    }
}
