<?php

namespace App\Filament\Resources\RenstraProgramResource\Pages;

use App\Filament\Resources\RenstraProgramResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRenstraProgram extends EditRecord
{
    protected static string $resource = RenstraProgramResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // Actions\DeleteAction::make(),
        ];
    }
}
