<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RenstraUrusan extends Model
{
    protected $table = 'renstra_urusan';

    protected $fillable = [
        'skpd_id',
        'kode_urusan',
        'nama_urusan',
    ];

    public function programs()
    {
        return $this->hasMany(RenstraProgram::class, 'kode_urusan', 'kode_urusan');
    }
}
