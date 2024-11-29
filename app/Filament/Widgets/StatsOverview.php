<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends BaseWidget
{
    protected static ?int $sort = 1;

    protected function getStats(): array
    {
        return [
        Stat::make('PAGU RKPD', number_format(\App\Models\RenjaSubKegiatan::sum('pagu_rkpd')))
            // ->description('32k increase')
            // ->descriptionIcon('heroicon-m-arrow-trending-up')
            ,
        Stat::make('PAGU APBD', number_format(\App\Models\RenjaSubKegiatan::sum('pagu_apbd')))
            // ->description('7% decrease')
            // ->descriptionIcon('heroicon-m-arrow-trending-down')
            ,
        Stat::make('PAGU RKPD PERUBAHAN', number_format(\App\Models\RenjaSubKegiatan::sum('pagu_rkpd')))
            // ->description('3% increase')
            // ->descriptionIcon('heroicon-m-arrow-trending-up')
            ,
        ];
    }
}
