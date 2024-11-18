<?php

namespace App\Filament\Resources\RkaResource\Pages;

use App\Filament\Resources\RkaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRka extends EditRecord
{
    protected static string $resource = RkaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
