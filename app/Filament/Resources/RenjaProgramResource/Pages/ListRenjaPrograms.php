<?php

namespace App\Filament\Resources\RenjaProgramResource\Pages;

use App\Filament\Resources\RenjaProgramResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListRenjaPrograms extends ListRecords
{
    protected static string $resource = RenjaProgramResource::class;
    protected static ?string $title = 'Renja Program';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tambah'),
        ];
    }
}
