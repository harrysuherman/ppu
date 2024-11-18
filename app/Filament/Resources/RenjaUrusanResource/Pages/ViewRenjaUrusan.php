<?php

namespace App\Filament\Resources\RenjaUrusanResource\Pages;

use App\Filament\Resources\RenjaUrusanResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewRenjaUrusan extends ViewRecord
{
    protected static string $resource = RenjaUrusanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
