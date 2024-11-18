<?php

namespace App\Filament\Resources\RenjaKegiatanResource\Pages;

use App\Filament\Resources\RenjaKegiatanResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewRenjaKegiatan extends ViewRecord
{
    protected static string $resource = RenjaKegiatanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
