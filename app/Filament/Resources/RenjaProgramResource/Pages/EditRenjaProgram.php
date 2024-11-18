<?php

namespace App\Filament\Resources\RenjaProgramResource\Pages;

use App\Filament\Resources\RenjaProgramResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRenjaProgram extends EditRecord
{
    protected static string $resource = RenjaProgramResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
