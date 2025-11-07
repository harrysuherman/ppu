<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;

class ProgresProgramPrioritas extends Page
{
    // protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static ?string $navigationLabel = 'Progres Program Prioritas';

    protected static string $view = 'filament.pages.progres-program-prioritas';

    protected static ?string $navigationGroup = 'Laporan';
    protected static ?int $navigationSort = 6;

    public static function canAccess(): bool
    {
        return auth()->user()->can('page_ProgresProgramPrioritas');
    }
}
