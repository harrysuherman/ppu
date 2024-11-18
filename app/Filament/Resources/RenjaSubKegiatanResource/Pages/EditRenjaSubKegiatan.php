<?php

namespace App\Filament\Resources\RenjaSubKegiatanResource\Pages;

use App\Filament\Resources\RenjaSubKegiatanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRenjaSubKegiatan extends EditRecord
{
    protected static string $resource = RenjaSubKegiatanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
