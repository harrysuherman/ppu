<?php

namespace App\Filament\Resources\RenjaSubKegiatanResource\Pages;

use App\Filament\Resources\RenjaSubKegiatanResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewRenjaSubKegiatan extends ViewRecord
{
    protected static string $resource = RenjaSubKegiatanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
