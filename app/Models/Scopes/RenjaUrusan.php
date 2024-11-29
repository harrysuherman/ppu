<?php

namespace App\Models\Scopes;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Scope;
use Auth;

class RenjaUrusan implements Scope
{
    /**
     * Apply the scope to a given Eloquent query builder.
     */
    public function apply(Builder $builder, Model $model): void
    {
        if (Auth::check()) {
           if (Auth::user()->hasRole(['satker'])) {
             $builder->where('skpd_id', Auth::user()->satuan_kerja_id);
           }
           else{

           }
        }
    }
}
