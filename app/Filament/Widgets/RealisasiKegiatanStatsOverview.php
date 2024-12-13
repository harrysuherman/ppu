<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use DB;
use Auth;

class RealisasiKegiatanStatsOverview extends BaseWidget
{
    protected static ?int $sort = 1;
    protected int | string | array $columnSpan = 'full';

    protected function getStats(): array
    {
        $target_admin = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(session('tahun_anggaran'))->sum('pagu_apbd');
        if (Auth::user()->hasRole(['super_admin'])) {
            $realisasi_tw1 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(session('tahun_anggaran'))->sum('nilai_realisasi_tw1');
            $realisasi_tw2= DB::table('renja_sub_kegiatan')->whereTahunAnggaran(session('tahun_anggaran'))->sum('nilai_realisasi_tw2');
            $realisasi_tw3 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(session('tahun_anggaran'))->sum('nilai_realisasi_tw3');
            $realisasi_tw4 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(session('tahun_anggaran'))->sum('nilai_realisasi_tw4');
        }
        else if (Auth::user()->hasRole(['satker'])) {
            $realisasi_tw1 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->sum('nilai_realisasi_tw1');
            $realisasi_tw2= DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->sum('nilai_realisasi_tw2');
            $realisasi_tw3 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->sum('nilai_realisasi_tw3');
            $realisasi_tw4 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->sum('nilai_realisasi_tw4');
        }
        return [
        Stat::make('Realisasi Triwulan I', number_format($realisasi_tw1))
            ->description('Persentase ' . ($realisasi_tw1 != 0) ? number_format($realisasi_tw1 / $target_admin *100,2) : 0.00 .'%')
            ,
        Stat::make('Realisasi Triwulan II', number_format($realisasi_tw2))
        ->description('Persentase ' . ($realisasi_tw2 != 0) ? number_format($realisasi_tw2 / $target_admin *100,2) : 0.00 .'%')
            ,
        Stat::make('Realisasi Triwulan III', number_format($realisasi_tw3))
        ->description('Persentase ' . ($realisasi_tw3 != 0) ? number_format($realisasi_tw3 / $target_admin *100,2) : 0.00 .'%')
            ,
        Stat::make('Realisasi Triwulan IV', number_format($realisasi_tw4))
        ->description('Persentase ' . ($realisasi_tw4 != 0) ? number_format($realisasi_tw4 / $target_admin *100,2) : 0.00 .'%')
            ,
        ];
    }
}
