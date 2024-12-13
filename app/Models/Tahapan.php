<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tahapan extends Model
{
    protected $table = "tahapan";

    protected $fillable = [
        'tahapan','tgl_mulai','tgl_selesai','aktif'
    ];
}
