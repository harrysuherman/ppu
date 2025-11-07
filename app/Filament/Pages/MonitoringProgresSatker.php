<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;

class MonitoringProgresSatker extends Page
{
    // protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static ?string $navigationLabel = 'Monev Progres OPD';

    protected static string $view = 'filament.pages.monitoring-progres-satker';

    protected static ?string $navigationGroup = 'Laporan';
    protected static ?int $navigationSort = 3;

    public static function canAccess(): bool
    {
        return auth()->user()->can('page_MonitoringProgresSatker');
    }
}
