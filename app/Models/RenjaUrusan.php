<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Scopes\RenjaUrusan as Scope;

class RenjaUrusan extends Model
{
    use HasFactory;

    protected $table = "renja_urusan";
    protected $fillable = ['nama_urusan','skpd_id','tahun_anggaran','kode_urusan','created_by','udpated_by'];

    protected static function booted(): void
    {
        static::addGlobalScope(new Scope);
    }

}
