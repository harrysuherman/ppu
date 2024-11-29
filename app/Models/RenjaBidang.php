<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Scopes\RenjaBidang as Scope;

class RenjaBidang extends Model
{
    use HasFactory;

    protected $table = "renja_bidang";
    protected $fillable = ['nama_bidang','skpd_id','tahun_anggaran','kode_bidang','kode_urusan','created_by','udpated_by'];

    protected static function booted(): void
    {
        static::addGlobalScope(new Scope);
    }
}
