<?php

namespace App\Filament\Resources\RenjaKegiatanResource\Pages;

use App\Filament\Resources\RenjaKegiatanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRenjaKegiatan extends EditRecord
{
    protected static string $resource = RenjaKegiatanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
