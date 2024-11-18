<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use Filament\Actions\Action;
use Filament\Actions;
use Filament\Support\Enums\MaxWidth;
use App\Filament\Widgets\RenjaProgramHeader;
use App\Filament\Widgets\RenjaKegiatan;

class RenjaProgram extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static string $view = 'filament.pages.renja-program';
    protected static bool $shouldRegisterNavigation = false;

    public function getMaxContentWidth(): MaxWidth
    {
        return MaxWidth::Full;
    }

    public static function canAccess(): bool
    {
        return auth()->user()->can('page_RenjaProgram');
    }

    protected function getHeaderWidgets(): array
    {
        return [
            RenjaProgramHeader::class
        ];
    }
    protected function getFooterWidgets(): array
    {
        return [
            RenjaKegiatan::class
        ];
    }
}
