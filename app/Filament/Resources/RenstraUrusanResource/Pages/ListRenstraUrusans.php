<?php

namespace App\Filament\Resources\RenstraUrusanResource\Pages;

use App\Filament\Resources\RenstraUrusanResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListRenstraUrusans extends ListRecords
{
    protected static string $resource = RenstraUrusanResource::class;
    protected static ?string $title = 'Urusan Renstra';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tambah Urusan'),
        ];
    }
}
