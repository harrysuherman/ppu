<?php

namespace App\Filament\Resources\SpmResource\Pages;

use App\Filament\Resources\SpmResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSpms extends ListRecords
{
    protected static string $resource = SpmResource::class;
    protected static ?string $title = 'Standar Pelayanan Minimal (SPM)';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tambah')->icon('heroicon-o-plus-circle'),
        ];
    }
}
