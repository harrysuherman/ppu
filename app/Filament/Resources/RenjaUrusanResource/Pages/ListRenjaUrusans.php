<?php

namespace App\Filament\Resources\RenjaUrusanResource\Pages;

use App\Filament\Resources\RenjaUrusanResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListRenjaUrusans extends ListRecords
{
    protected static string $resource = RenjaUrusanResource::class;
    protected static ?string $title = 'Renja Urusan';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tambah')->icon('heroicon-o-plus-circle'),
        ];
    }
}
