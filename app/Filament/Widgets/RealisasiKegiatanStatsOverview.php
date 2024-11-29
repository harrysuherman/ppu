<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class RealisasiKegiatanStatsOverview extends BaseWidget
{
    protected static ?int $sort = 1;
    protected int | string | array $columnSpan = 'full';

    protected function getStats(): array
    {
        return [
        Stat::make('Realisasi Triwulan I', number_format(\App\Models\RenjaSubKegiatan::sum('nilai_realisasi_tw1')))
            ->description('Persentase ' .number_format(\App\Models\RenjaSubKegiatan::sum('nilai_realisasi_tw1') / \App\Models\RenjaSubKegiatan::sum('pagu_apbd')*100,2) .'%')
            ,
        Stat::make('Realisasi Triwulan II', number_format(\App\Models\RenjaSubKegiatan::sum('nilai_realisasi_tw2')))
            ->description('Persentase ' .number_format(\App\Models\RenjaSubKegiatan::sum('nilai_realisasi_tw2') / \App\Models\RenjaSubKegiatan::sum('pagu_apbd')*100,2) .'%')
            ,
        Stat::make('Realisasi Triwulan III', number_format(\App\Models\RenjaSubKegiatan::sum('nilai_realisasi_tw3')))
            ->description('Persentase ' .number_format(\App\Models\RenjaSubKegiatan::sum('nilai_realisasi_tw3') / \App\Models\RenjaSubKegiatan::sum('pagu_apbd')*100,2) .'%')
            ,
        Stat::make('Realisasi Triwulan IV', number_format(\App\Models\RenjaSubKegiatan::sum('nilai_realisasi_tw4')))
            ->description('Persentase ' .number_format(\App\Models\RenjaSubKegiatan::sum('nilai_realisasi_tw4') / \App\Models\RenjaSubKegiatan::sum('pagu_apbd')*100,2) .'%')
            ,
        ];
    }
}
