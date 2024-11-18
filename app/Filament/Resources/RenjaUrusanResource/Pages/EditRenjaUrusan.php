<?php

namespace App\Filament\Resources\RenjaUrusanResource\Pages;

use App\Filament\Resources\RenjaUrusanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRenjaUrusan extends EditRecord
{
    protected static string $resource = RenjaUrusanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
