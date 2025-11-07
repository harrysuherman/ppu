<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use Filament\Actions\Action;
use Filament\Actions;
use App\Imports\RenjaImport;
use Filament\Support\Enums\MaxWidth;
use App\Filament\Widgets\RenjaWidget;

class ImportRenja extends Page
{
    // protected static ?string $navigationIcon = 'heroicon-o-table-cells';
    protected static ?string $navigationLabel = 'Import Renja';
    protected static ?string $navigationGroup = 'RENJA';

    protected static string $view = 'filament.pages.import-renja';

    public function getMaxContentWidth(): MaxWidth
    {
        return MaxWidth::Full;
    }

    public static function canAccess(): bool
    {
        return auth()->user()->can('page_ImportRenja');
    }

    protected function getHeaderWidgets(): array
    {
        return [
            RenjaWidget::class
        ];
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('template_import_renja')->color("success")->icon('heroicon-o-document-text'),
            \EightyNine\ExcelImport\ExcelImportAction::make()->label('Import Renja')
                ->color("primary")
                ->use(RenjaImport::class)
            ,
        ];
    }
}
