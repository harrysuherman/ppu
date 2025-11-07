<?php

namespace App\Filament\Resources\RenstraProgramResource\Pages;

use App\Filament\Resources\RenstraProgramResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListRenstraPrograms extends ListRecords
{
    protected static string $resource = RenstraProgramResource::class;
    protected static ?string $title = 'Program Renstra';

    protected function getHeaderActions(): array
    {
        return [
            // Actions\CreateAction::make(),
        ];
    }
}
