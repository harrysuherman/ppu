<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Auth;
use DB;

class StatsOverview extends BaseWidget
{
    protected static ?int $sort = 1;

    protected function getStats(): array
    {
        if (Auth::user()->hasRole(['super_admin'])) {
            $pagu_rkpd = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(session('tahun_anggaran'))->sum('pagu_rkpd');
            $pagu_apbd = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(session('tahun_anggaran'))->sum('pagu_apbd');
            $pagu_rkpd_perubahan = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(session('tahun_anggaran'))->sum('pagu_rkpd_perubahan');
        }
        else if (Auth::user()->hasRole(['satker'])) {
            $pagu_rkpd = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->sum('pagu_rkpd');
            $pagu_apbd = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->sum('pagu_apbd');
            $pagu_rkpd_perubahan = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->sum('pagu_rkpd_perubahan');
        }
        return [
        Stat::make('PAGU RKPD', number_format($pagu_rkpd))
            ,
        Stat::make('PAGU APBD', number_format($pagu_apbd))
            ,
        Stat::make('PAGU RKPD PERUBAHAN', number_format($pagu_rkpd_perubahan))
            ,
        ];
    }
}
