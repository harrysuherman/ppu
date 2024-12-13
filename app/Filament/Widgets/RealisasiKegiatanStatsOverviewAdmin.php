<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class RealisasiKegiatanStatsOverviewAdmin extends BaseWidget
{
    protected static ?int $sort = 1;
    protected int | string | array $columnSpan = 'full';

    protected function getStats(): array
    {
        $nilai_target = \App\Models\RenjaSubKegiatan::sum('pagu_apbd');
        $realisasi_tw1 = \App\Models\RenjaSubKegiatan::withoutGlobalScope(RenjaSubKegiatan::class)->whereSkpdId(session('filter_skpd'))->sum('nilai_realisasi_tw1');
        $realisasi_tw2 = \App\Models\RenjaSubKegiatan::withoutGlobalScope(RenjaSubKegiatan::class)->whereSkpdId(session('filter_skpd'))->sum('nilai_realisasi_tw2');
        $realisasi_tw3 = \App\Models\RenjaSubKegiatan::withoutGlobalScope(RenjaSubKegiatan::class)->whereSkpdId(session('filter_skpd'))->sum('nilai_realisasi_tw3');
        $realisasi_tw4 = \App\Models\RenjaSubKegiatan::withoutGlobalScope(RenjaSubKegiatan::class)->whereSkpdId(session('filter_skpd'))->sum('nilai_realisasi_tw4');
        $persen_realisasi_tw1 = ($realisasi_tw1 != 0) ? $realisasi_tw1/$nilai_target : 0.00 ;
        $persen_realisasi_tw2 = ($realisasi_tw2 != 0) ? $realisasi_tw2/$nilai_target : 0.00 ;
        $persen_realisasi_tw3 = ($realisasi_tw3 != 0) ? $realisasi_tw3/$nilai_target : 0.00 ;
        $persen_realisasi_tw4 = ($realisasi_tw4 != 0) ? $realisasi_tw4/$nilai_target : 0.00 ;
        return [
        Stat::make('Realisasi Triwulan I', number_format($realisasi_tw1))
            ->description('Persentase ' .number_format($persen_realisasi_tw1*100,2) .'%')
            ,
        Stat::make('Realisasi Triwulan II', number_format($realisasi_tw2))
            ->description('Persentase ' .number_format($persen_realisasi_tw2*100,2) .'%')
            ,
        Stat::make('Realisasi Triwulan III', number_format($realisasi_tw3))
            ->description('Persentase ' .number_format($persen_realisasi_tw3*100,2) .'%')
            ,
        Stat::make('Realisasi Triwulan IV', number_format($realisasi_tw4))
            ->description('Persentase ' .number_format($persen_realisasi_tw4*100,2) .'%')
            ,
        ];
    }
}
