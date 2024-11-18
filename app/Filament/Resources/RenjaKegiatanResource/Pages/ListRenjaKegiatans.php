<?php

namespace App\Filament\Resources\RenjaKegiatanResource\Pages;

use App\Filament\Resources\RenjaKegiatanResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListRenjaKegiatans extends ListRecords
{
    protected static string $resource = RenjaKegiatanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
