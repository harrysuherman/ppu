<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;

class KonsistensiRpdRkpd extends Page
{
    // protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static ?string $navigationLabel = 'Konsistensi RPD RKPD';

    protected static string $view = 'filament.pages.konsistensi-rpd-rkpd';
    protected static ?string $navigationGroup = 'Laporan';
    protected static ?int $navigationSort = 5;

    public static function canAccess(): bool
    {
        return auth()->user()->can('page_KonsistensiRpdRkpd');
    }
}
