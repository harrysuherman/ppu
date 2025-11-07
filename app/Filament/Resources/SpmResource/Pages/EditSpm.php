<?php

namespace App\Filament\Resources\SpmResource\Pages;

use App\Filament\Resources\SpmResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSpm extends EditRecord
{
    protected static string $resource = SpmResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
