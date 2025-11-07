<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;

class KeselarasanRkpdApbd extends Page
{
    // protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static ?string $navigationLabel = 'Keselarasan RKPD APBD';

    protected static string $view = 'filament.pages.keselarasan-rkpd-apbd';
    protected static ?string $navigationGroup = 'Laporan';
    protected static ?int $navigationSort = 4;

    public static function canAccess(): bool
    {
        return auth()->user()->can('page_KeselarasanRkpdApbd');
    }
}
