<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use App\Filament\Widgets\RealisasiKegiatanStatsOverview;
use App\Filament\Widgets\RealisasiKegiatanTable;

class RealisasiKegiatan extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-banknotes';
    protected static ?string $navigationLabel = 'Realisasi Kegiatan';
    protected static ?string $navigationGroup = 'Laporan';

    protected static string $view = 'filament.pages.realisasi-kegiatan';

    public static function canAccess(): bool
    {
        return auth()->user()->can('page_RealisasiKegiatan');
    }

    protected function getHeaderWidgets(): array
    {
        return [
            RealisasiKegiatanStatsOverview::class,
            RealisasiKegiatanTable::class
        ];
    }
}
