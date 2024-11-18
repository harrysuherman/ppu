<?php

namespace App\Filament\Resources\RenjaProgramResource\Pages;

use App\Filament\Resources\RenjaProgramResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewRenjaProgram extends ViewRecord
{
    protected static string $resource = RenjaProgramResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
