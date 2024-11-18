<?php

namespace App\Filament\Resources\RkaResource\Pages;

use App\Filament\Resources\RkaResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewRka extends ViewRecord
{
    protected static string $resource = RkaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
