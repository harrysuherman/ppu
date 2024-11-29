<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RenjaSubKegiatanRealisasi extends Model
{
    use HasFactory;

    protected $table = "renja_sub_kegiatan_realisasi";

    protected $fillable = [
        'renja_sub_kegiatan_id','jumlah','nilai','created_by','updated_by','triwulan'
    ];


}
