<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use App\Filament\Widgets\StatsOverview;
use App\Filament\Widgets\Chart1;
use App\Filament\Widgets\Chart2;
use App\Filament\Widgets\ProgramRenja;
use App\Filament\Widgets\RealisasiKegiatanStatsOverview;

class Dashboard extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static string $view = 'filament.pages.dashboard';

    protected function getHeaderWidgets(): array
    {
        return [
            StatsOverview::class,
            RealisasiKegiatanStatsOverview::class,
            Chart1::class,
            Chart2::class,
            ProgramRenja::class,
        ];
    }
}
