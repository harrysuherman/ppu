<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Scopes\Bidang as Scope;

class Bidang extends Model
{
    protected $table = "bidang";

    protected $fillable = [
        'nama_bidang',
        'satuan_kerja_id',
    ];

    protected $casts = [
        'satuan_kerja_id'=> 'array'
    ];

}
